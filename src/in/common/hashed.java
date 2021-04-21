package in.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.xml.bind.DatatypeConverter;

public class hashed {
	
	public  String hashing;
	

	public  String getHash(String pass) 
	{
		String algo ="SHA-256";
		
		byte[] passbyte = pass.getBytes();
		
		try 
			{
				MessageDigest msgdigest = MessageDigest.getInstance(algo);
				msgdigest.update(passbyte);
				byte[] passdigest = msgdigest.digest();
				hashing = DatatypeConverter.printHexBinary(passdigest).toLowerCase();
			}
		catch (NoSuchAlgorithmException e) 
			{
				e.printStackTrace();
			}
		return hashing;
	}

}
