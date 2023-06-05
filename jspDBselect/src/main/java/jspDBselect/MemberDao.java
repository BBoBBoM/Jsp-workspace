package jspDBselect;

import java.sql.*;
import java.util.*;

public class MemberDao {
	private static MemberDao instance;
	private Connection connection;
	private String dbURL = "jdbc:mysql://localhost:3306/regist";
	private String id = "root";
	private String password = "1111";
	private String sql;

	private MemberDao() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버 적재 성공");

			connection = DriverManager.getConnection(dbURL, id, password);
			System.out.println("데이터베이스 연결 성공");

		} catch (ClassNotFoundException e) {
			System.out.println("JDBC 드라이브 검색 에러");

		} catch (SQLException ee) {
			System.out.println("데이터베이스 연결 실패");
			System.out.println("에러: " + ee);
		}
	}// MemberDao 타입의 (object)인스턴스 생성 메소드 (싱글톤)

	public static MemberDao getInstance() {
		if (instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}

	public void insertMember(member member) {

		// executeUpdate 레코드단위 1(성공)과 0(실패)

		try {
			sql = "INSERT INTO regist_info values(?,?,?)";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
//			pstmt.executeUpdate();
			
			int i = pstmt.executeUpdate();
			if (i == 1) {
				System.out.println("레코드 추가 성공");
			}



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("레코드 추가 실패");
		}

	}

	public void selectMember() {
		member member1 = new  member();
		Statement stmt;
		try {
			stmt = connection.createStatement();
			sql = "select * from regist_info";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");// rs값에 든 1번째 값 를 가져와서 name에 저장하고 출력하시오
				String name = rs.getString("name");

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	
	public member logincheck(String id) {

		member member1 = new  member();
		PreparedStatement pstmt=null;
		ResultSet rs2=null ;
		try {
			sql = "select * from regist_info where id=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);
			rs2 = pstmt.executeQuery();
			while (rs2.next()) {
				member1.setId(rs2.getString("id"));
				member1.setPwd(rs2.getString("pwd"));
				member1.setName(rs2.getString("name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member1;

	}
	public List<member> selectAll()
	{	List<member> list = new ArrayList<member>();


	Statement stmt;
	try {
		stmt = connection.createStatement();
		sql = "select * from regist_info";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			member member = new member();
			member.setId(rs.getString("id"));
			member.setPwd(rs.getString("pwd"));
			member.setName(rs.getString("name"));
			list.add(member);

			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return list;
	
	}
	public member updateInfo(String id,String name) {
		try {
			sql = "update regist_info set name=? where id=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,name );
			pstmt.setString(2,id );
		
//			pstmt.executeUpdate();
			
			int i = pstmt.executeUpdate();
			if (i == 1) {
				System.out.println("레코드 수정 성공");
			}



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("레코드 수정 실패");
		}
		
		return logincheck(id);
		
		

		
		
	}

}
