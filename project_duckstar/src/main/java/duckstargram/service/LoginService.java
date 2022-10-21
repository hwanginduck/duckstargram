package duckstargram.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duckstargram.dao.LoginDao;
import duckstargram.model.MemberBean;

@Service
public class LoginService {

	@Autowired
	private LoginDao dao;
	
	public MemberBean find_id(MemberBean mem) throws Exception{
		return dao.find_id(mem);
	}
}
