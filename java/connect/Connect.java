import java.io.IOException;
import kx.*;
public class Connect {
	String host = "localhost";
	int port = 1112;
	c conn = null;
	public Connect() throws c.KException, IOException {
		conn = new c(host, port);
	}

	public static void main(String args[]) {
		try {
			Connect c = new Connect();
		} catch (Exception e) {
		}
	}
	}


