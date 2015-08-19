package com.grduation.image;

import java.io.File;
import java.io.IOException;

public class DemoTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		System.out.println("BEGIN");

		String path = "1.jpg";
		try {
			String valCode = new OCR().recognizeText(new File(path), "jpg");
			System.out.println(valCode);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("END");
	}

}
