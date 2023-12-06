package ex03;

import java.util.Random;

public class UpdownGame {

		Random ran = new Random();
		int cpu = ran.nextInt(100) + 1;
		int count = 0;

	public String handler(String param) {
		int user = Integer.parseInt(param);
		String msg = "";
		count++;
		
		if(user == cpu) 	msg = String.format("정답, %d회 만에 정답을 맞춤", count);
		else if(user < cpu) msg = "UP (" + count + "회)";
		else 				msg = "DOWN (" + count + "회)";
		
		return msg;
	}
	
	public void reset() {
		count = 0;
		cpu = ran.nextInt(100) + 1;
	}
}
