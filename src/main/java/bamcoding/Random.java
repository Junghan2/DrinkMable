package bamcoding;

import java.util.Scanner;

public class Random {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int result = 0;
		String key = "";

		while (true) {

			if (key.equalsIgnoreCase("z")) {
				break;
			} else {
				result = (int) (Math.random() * 6) + 1;
				System.out.println(result);
			}
			key = input.nextLine();
		}

	}
}
