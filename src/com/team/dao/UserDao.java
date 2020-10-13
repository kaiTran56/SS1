package com.team.dao;

import java.util.List;
import java.util.Optional;

public interface UserDao<T> {
	List<T> getAll();

	Optional<T> get(int id);

	T get(String email);

	void edit(T t);

	void insert(T t);

	void delete(int id);
	
	T login(String email, String password);
}