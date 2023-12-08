package lolchampion;

public class DTO {
	private int idx;
	private String name;
	private String local;
	private String line;
	private String job;
	
	private static int seq;
	
	public DTO() {
		this.idx = ++seq;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public static int getSeq() {
		return seq;
	}
	
}
