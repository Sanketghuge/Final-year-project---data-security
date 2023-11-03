// Java program to split a file in multiple files.
package action;
import java.io.*;
import java.util.Scanner;

public class filesplittre {

	public static void main(String[] args) throws IOException {
		try {

			// read file and get no. of files to be generated
			String inputfile = "C:\\Users\\Halgi Sudarshan\\Desktop\\livecricket\\live2.txt";

			// No. of lines to be split and saved in each
			double nol = 2.0;
			
			File file = new File(inputfile);
			Scanner scanner = new Scanner(file);
			
			int count = 0;
			while (scanner.hasNextLine()) {
				scanner.nextLine();
				count++;
			}

			// display no. of lines in the input file.
			System.out.println("Lines in the file: " + count);

			double temp = (count / nol);
			int temp1 = (int) temp;
			int nof = 0;
			if (temp1 == temp) {
				nof = temp1;
			} else {
				nof = temp1 + 1;
			}
			System.out.println("No. of files to be generated :" + nof);

			// splitting of file into multiple files
			FileInputStream fstream = new FileInputStream(inputfile);
			DataInputStream in = new DataInputStream(fstream);

			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String strLine;

			for (int j = 1; j <= nol; j++) {

				// location of new file
				FileWriter fstream1 = new FileWriter("D:/" + j + ".txt");
				BufferedWriter out = new BufferedWriter(fstream1);
				for (int i = 1; i <= nof; i++) {
					strLine = br.readLine();
					if (strLine != null) {
						out.write(strLine);
						if (i != nol) {
							out.newLine();
						}
					}
				}
				out.close();
			}

			in.close();
		} catch (Exception e) {
			System.err.println("Error: " + e.getMessage());
		}

	}
}