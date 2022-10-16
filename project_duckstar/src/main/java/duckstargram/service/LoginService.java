package duckstargram.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duckstargram.dao.LoginDao;

@Service
public class LoginService {

	@Autowired
	private LoginDao dao;
}
