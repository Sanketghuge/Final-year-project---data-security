package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;

import org.apache.commons.net.ftp.FTPClient;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author java2
 */
public class Ftpcon {

    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

    public boolean upload(File file,String fname) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("darlapavankalyan123@gmail.com", "Dkalyan123@");
            client.enterLocalPassiveMode();
            fis = new FileInputStream(file);
            status = client.storeFile(fname, fis);
            client.logout();
            fis.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
    public static void main(String args[])
    {   String fname="venu2.txt";
    	Ftpcon ftpcon=new Ftpcon();
    	File file=new File(fname);
    	FileWriter fr;
		try {
			System.out.println("uploading");
			fr = new FileWriter(file);
			fr.write("hii i am okay");
			fr.flush();
	    	ftpcon.upload(file, fname);
	    	System.out.println("completed");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
}
