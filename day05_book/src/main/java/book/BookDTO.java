package book;

public class BookDTO {
	
	private int idx;
	private String title;
	private String author;
	private String publisher;
	private String publishDate;
	
	private static int seq = 0;
	
	public BookDTO() {
		// 생성자를 호출할때마다 시퀀스가 증가하면서 idx에 대입
		this.idx = ++seq;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public static int getSeq() {
		return seq;
	}
}
