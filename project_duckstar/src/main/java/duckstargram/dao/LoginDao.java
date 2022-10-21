package duckstargram.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import duckstargram.model.MemberBean;


@Repository
public class LoginDao {

	@Autowired
	private SqlSession session;
	
//	회원 아이디 검색
//	@Transactional
	public MemberBean find_id(MemberBean mem) throws Exception {
		return session.selectOne("find_id", mem);
	}
}
