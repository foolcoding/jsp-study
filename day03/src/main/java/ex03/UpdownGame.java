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
		
		if(user == cpu) 	msg = String.format("����, %dȸ ���� ������ ����", count);
		else if(user < cpu) msg = "UP (" + count + "ȸ)";
		else 				msg = "DOWN (" + count + "ȸ)";
		
		return msg;
	}
	
	public void reset() {
		count = 0;
		cpu = ran.nextInt(100) + 1;
	}
}
