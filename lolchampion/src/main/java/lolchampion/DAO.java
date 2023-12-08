package lolchampion;

import java.util.ArrayList;
import java.util.List;

public class DAO {
	
	private ArrayList<DTO> list = new ArrayList<>();
	
	public List<DTO> selectList(){
		return list;
	}
	
	public DTO selectOne(int idx) {
		for(DTO dto : list) {
			if(dto.getIdx() == idx) {
				return dto;
			}
		}
		return null;
	}
	
	public int insert(DTO dto) {
		return list.add(dto) ? 1 : 0;
	}
	
	public int delete(int idx) {
		return list.removeIf(a -> a.getIdx() == idx) ? 1 : 0;
	}
	
	public int currval() {
		return DTO.getSeq();
	}
	
}
