package youtube;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.driver.OracleDriver;

public class DAO {
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Connection getConnection() throws Exception{
		Class.forName(OracleDriver.class.getName());
		return DriverManager.getConnection(url, user, password);
	}
	
	private void close() {
		try {
			if(rs != null)rs.close();
			if(pstmt != null)	pstmt.close();
			if(conn != null)	conn.close();
		} catch (SQLException e) {}	
	}
	
	private DTO mapping(ResultSet rs) throws SQLException {
		DTO dto = new DTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setImgName(rs.getString("imgName"));
		dto.setChannel(rs.getString("channel"));
		dto.setTitle(rs.getString("title"));
		dto.setVideeoTag(rs.getString("videeoTag"));
		return dto;
	}
	
	public List<DTO> selectList(){
		ArrayList<DTO> list = new ArrayList<DTO>();
		String sql = "select * from youtube";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs)); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public DTO selectOne(int idx){
		String sql = "select * from youtube where idx = ?";
		DTO dto = null;
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
	
	public List<DTO> searchList(String title){
		ArrayList<DTO> list = new ArrayList<DTO>();
		String sql = "select * from youtube where title like '%' || ? || '%'";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {close();}
		return list;
	}
	
	public int insert(DTO dto) {
		int row = 0;
		String sql = "insert into youtube (title, channel, imgName, videeoTag) values (?, ?, ?, ?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getChannel());
			pstmt.setString(3, dto.getImgName());
			pstmt.setString(4, dto.getVideeoTag());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete youtube where idx = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return row;
	}
	
	public int update(DTO dto) {
		int row = 0;
		String sql = "update youtube set title = ?, channel = ?, imgName = ?, videeotag = ? where idx = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getChannel());
			pstmt.setString(3, dto.getImgName());
			pstmt.setString(4, dto.getVideeoTag());
			pstmt.setInt(5, dto.getIdx());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {close();}
		return row;
	}
	
	
}
