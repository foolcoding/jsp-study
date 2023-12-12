package mcdonald;

import java.sql.*;
import java.util.*;

import oracle.jdbc.driver.OracleDriver;

public class McdonaldDAO {

	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// getConnection
	private Connection getConnection() throws Exception{
		Class.forName(OracleDriver.class.getName());
		return DriverManager.getConnection(url, user, password);
	}
	
	// close
	private void close() {
		try {
			if(rs != null)		rs.close();
			if(pstmt != null)	pstmt.close();
			if(conn != null)	conn.close();
		} catch(SQLException e) {}
	}
	
	// mapping
	private McdonaldDTO mapping(ResultSet rs) throws SQLException {
		McdonaldDTO dto = new McdonaldDTO();
		dto.setCategory(rs.getString("category"));
		dto.setIdx(rs.getInt("idx"));
		dto.setImgName(rs.getString("imgName"));
		dto.setmemo(rs.getString("memo"));
		dto.setName(rs.getString("name"));
		dto.setPrice(rs.getInt("price"));
		return dto;
	}
	
	
	// ��ü��� (select * from mcdonald)
	public List<McdonaldDTO> selectList(){
		ArrayList<McdonaldDTO> list = new ArrayList<>();
		String sql = "select * from mcdonald";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {close();}
		return list;
	}
	
	// ī�װ��� ��� (select * from mcdonald where category = ?)
	public List<McdonaldDTO> selectListByCategory(String category){
		ArrayList<McdonaldDTO> list = new ArrayList<>();
		String sql = "select * from mcdonald where category = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {close();}
		return list;
	}	
	
	
	// ������ȸ (select * from mcdonald where idx = ?)
	public McdonaldDTO selectOne(int idx){
		String sql = "select * from mcdonald where idx = ?";
		McdonaldDTO dto = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				dto = mapping(rs);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {close();}
		return dto;
	}
	
	// �߰� (insert into mcdonald (category, name, price, imgName, memo) values (?, ?, ?, ?, ?)
	
	
	// ���� (delete mcdonald where idx = ?)
	
	
	
	
}
