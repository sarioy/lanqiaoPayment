package org.vip.service;

import java.util.List;

import org.vip.dao.UserDao;
import org.vip.entity.User;

public class UserService {
	UserDao userDao = new UserDao();
	//增加
	public boolean AddUser(User user){
		if(!userDao.isExist(user.getVaccount())){
			return userDao.AddUser(user);
		}else{
			System.out.println("此账号已经存在");
			return false;
		}
	}
	//根据账号查询此账号是否存在
	public boolean isExist(String vaccount){
		return userDao.isExist(vaccount);
	}
	
	//查询所有
	public List<User> QueryAllUser(){
		return userDao.queryAllUser();
	}
	

}
