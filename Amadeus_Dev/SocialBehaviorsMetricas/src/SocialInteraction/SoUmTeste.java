package SocialInteraction;

import java.util.Date;
import java.io.FileWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.math.*;

public class SoUmTeste {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		double teste = 0.00004454545;
		double p = Math.pow(10, 6); 
		double teste2 = Math.round(teste * p) / p;
		System.out.println(teste2);

	}

}
