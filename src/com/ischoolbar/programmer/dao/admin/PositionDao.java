package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Position;

/**
 * ְ���Dao��
 * @author yanyan
 *
 */
@Repository
public interface PositionDao {
	public int add(Position position);
	public List<Position> findAll();
	public String findNameById(Long poid);
	public Long findIdByName(String position);
	public int addNumById(Long poid);
	public int subNumById(Long poid);
	public int delete(Long poid);
}
