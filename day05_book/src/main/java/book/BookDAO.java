package book;

import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	
	// ���α׷����� ���Ǵ� �������� �����
	private ArrayList<BookDTO> list = new ArrayList<>();
	
//	// ���� �ٸ� jsp���������� ���� DAO ��ü�� �����ϱ� ���� �̱��� ���� ���
//	// 1) DAO��ü�� �����ڷ� ȣ�� �� �� ����
//	// 2) DAOŬ������ static �޼��带 ȣ���Ͽ� �� �ϳ��� ��ü�� ��ȯ�ϵ��� �Ѵ�
//	
//	private BookDAO() {}	// �����ڴ� �ܺο��� ȣ���� �� ����
//	
//	private static BookDAO instance = new BookDAO();
//	
//	public static BookDAO getInstance() {	// ��ü���� ȣ���ؾ� �ϹǷ�, static
//		return instance;
//	}
	
	// ���α׷��� �ֿ� ����� �޼���� �ۼ��Ѵ�
	// ���
	public List<BookDTO> selectList(){
		// select * from bokk order bu idx;
		return list;
	}
	
	// ������ȸ
	public BookDTO selectOne(int idx){
		// select * from book where idx = ?
		for(BookDTO dto : list) {
			if(dto.getIdx() == idx) {
				return dto;
			}
		}
		return null;
	}
	
	// �߰�
	public int insert(BookDTO dto) {
		// insert into book (title, author, publisher, publishDate) values(?, ?, ?, ?)
		int row = list.add(dto) ? 1 : 0;
		return row;
	}
	
	// ����
	public int delete(int idx) {
		// delete book where idx = ?
		int row = list.removeIf(dto -> dto.getIdx() == idx) ? 1 : 0;
		return row;
	}
	
	// �߰��� ���� ���������� �߰��� ��ü�� idx�� ������� Ȯ���ϴ� ���
	public int currval() {
		// select book_seq.currval from dual;
		return BookDTO.getSeq();
	}
}
