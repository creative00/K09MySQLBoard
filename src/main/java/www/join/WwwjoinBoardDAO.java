package www.join;

import java.sql.PreparedStatement;

import common.DBConnPool;
import common.DBConnPool1;

public class WwwjoinBoardDAO extends DBConnPool1 {
	public WwwjoinBoardDAO() {
		super();

}

	public int join(String email_id, String email_domain, String user_id, String user_pass, String pass2, String name, String gender, String mobile1, String mobile2, String mobile3) {
		String query = "INSERT INTO REGISTERATION VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			// 각각의 데이터를 실제로 넣어준다.
			PreparedStatement pstmt = con.prepareStatement(query);

			// 쿼리문의 ?안에 각각의 데이터를 넣어준다.
			
			pstmt.setString(1, email_id);
			pstmt.setString(2, email_domain);
					
			pstmt.setString(3, user_id);
			pstmt.setString(4, user_pass);
			pstmt.setString(5, pass2);
			pstmt.setString(6, name);
			pstmt.setString(7, gender);
			pstmt.setString(8, mobile1);
			pstmt.setString(9, mobile2);
			pstmt.setString(10, mobile3);

			// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
