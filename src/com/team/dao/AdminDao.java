package com.team.dao;

import com.team.model.Admin;

public interface AdminDao<T> {
	public Admin getLogin(String username, String password);
}
