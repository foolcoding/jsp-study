package ex04;

public class Test2 {
	
	// �ܺο��� ȣ���� �� ���� ������
	private Test2() {
		System.out.println("Test2 ������ ȣ��");
	}
	
	// �ڽŰ� ���� Ÿ���� ��ü�� ������ ��� �ʵ�
	private static Test2 instance;
	
	public static Test2 getInstance() {
		if(instance == null) {
			// ���ο����� ������ ȣ�� ����
			instance = new Test2();
		}
		return instance;
	}
}
