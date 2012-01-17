pi:acos -1;
quartpi:pi%4;
deg2rad:pi%180;
rad2deg:180%pi;
sqr:{x*x}
cube:{x*x*x}
distance:{[north1;east1;north2;east2] sqrt sqr[north1-north2]+sqr[east1-east2]}

/ellipsoid data by Peter H. Dana, U. Texas, Austin
ellipsoids:flip `id`name`eqradius`eccentricity2!("ISIF";",") 0: `:ellipsoid.txt;

/ the following is adapted from Chuck Gantz's C++ code
/ available at http://www.gpsy.com/gpsinfo/geotoutm/
/ ref: USGS Bulletin 1532, converts latitude/longitude to UTM coordinates
/ returns a dict of zone and UTM coordinates 
UTMdesig:{[lat] /my version is slightly inaccurate for inequalities at intervals
    desig:asc (!) . flip 2 cut 
    (   `Z; 84.0;
        `X; 72.0;
        `W; 64.0;
        `V; 56.0;
        `U; 48.0;
        `T; 40.0;
        `S; 32.0;
        `R; 24.0;
        `Q; 16.0;
        `P; 8.0;
        `N; 0.0;
        `M; -8.0;
        `L; -16.0;
        `K; -24.0;
        `J; -32.0;
        `H; -40.0;
        `G; -48.0;
        `F; -56.0;
        `E; -64.0;
        `D; -72.0;
        `C; -80.0;
        `Z; -0w); /latitude beyond UTM limits
        string key[desig]@key[group desig] bin "f"$lat}

/need more complicated calculations for other places, but for now this will do
getzone:{[latitude;LongTemp] 1+"i"$(LongTemp+180)%6};

calcM:{[radius;ecc2;LatRad]
        sqrecc2:sqr[ecc2];
        cubeecc2:cube[ecc2];

        radius*(1 - (ecc2%4) - (3*sqrecc2%64) - (5*cubeecc2%256))*LatRad
        - ((3*ecc2%8) + (3*sqrecc2%32) - (45*cubeecc2%1024))*sin[2*LatRad]
                      + ((15*sqrecc2%256) + (45*cubeecc2%1024))*sin[4*LatRad]
                      - (35*cubeecc2%3072)*sin[6*LatRad]} 

ll2utm:{[ellipsoidref;latitude;longitude] 
    radius:ellipsoids[ellipsoidref][`eqradius];
    ecc2:ellipsoids[ellipsoidref][`eccentricity2];
    k0: 0.9996;
    LongTemp:(longitude+180)-(360*"i"$((longitude+180)%360))-180;
    LatRad: latitude*deg2rad;
    LongRad: LongTemp*deg2rad;
    zone:getzone[latitude;LongTemp];
    LongOrig: (6*zone-1) - 180 - 3;
    LongOrigRad: LongOrig * deg2rad;
    UTMZone: `$string[zone],UTMdesig[latitude];
    eccP2:ecc2%1-ecc2;
    N:radius%sqrt 1 - ecc2*sqr sin LatRad;
    T:sqr tan LatRad;
    C:eccP2*sqr cos LatRad;
    A:cos[LatRad]*LongRad-LongOrigRad;
    M:calcM[radius;ecc2;LatRad];

    UTMEasting:500000.0+k0*N*((A+(1-T+C)*cube[A]%6)
                    + (5-(18*T)+sqr[T]+(72*C)-(58*eccP2))*cube[A]*sqr[A]%120);

    UTMNorthing:k0*(M+N*tan[LatRad]*((sqr[A]%2)+((5-T)+(9*C)+4*sqr[C])*A*cube[A]%24) 
                    + (61-(58*T)+sqr[T]+(600*C)-(330*eccP2))*sqr[cube[A]]%720);

    if[latitude< 0; UTMNorthing+:10000000.0];
    (!) . flip 2 cut (
    `UTMZone;           UTMZone;
    `UTMEasting;        UTMEasting;
    `UTMNorthing;       UTMNorthing;
    `UTMEasting100;     UTMEasting%100;
    `UTMNorthing100;    UTMNorthing%100;
    `UTMEasting200;     UTMEasting%200;
    `UTMNorthing200;    UTMNorthing%200;
    `UTMEasting400;     UTMEasting%400;
    `UTMNorthing400;    UTMNorthing%400) }

/
    fips code,zip code,state name,town,longitude,latitude,population in 1990,
    allocation (fraction of state within zipcode)
    http://landview.census.gov/geo/www/gazetteer/places.html
    http://www.census.gov/geo/www/tiger/tgrshp2011/tgrshp2011.html
\
citydata:flip `index`zip`state`town`longitude`latitude`population1990`allocation!("IIS*FFIF";",") 0: read0 `:zips.txt;
citydata:citydata,'ll2utm[14;]'[citydata`latitude;citydata`longitude];

/find neighbors, somewhat redundant really if citydata table is correct
neighbors:{[zipcode;radius] 
    coords:exec UTMZone,UTMNorthing400,UTMEasting400 from citydata where zip=zipcode;
    select zip,state,town,longitude,latitude,population1990,allocation from citydata where UTMZone in coords`UTMZone,UTMEasting400 within raze (neg radius;radius)+/:coords`UTMEasting400, UTMNorthing400 within raze (neg radius;radius)+/:coords`UTMNorthing400}
