package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Position;

/**
 * Ö°ÎñµÄService
 * @author yanyan
 *
 */
@Service
public interface PositionService {
	public int add(Position position);
	public List<Position> findAll();
	public List<Position> findAllPage(int page,int size);
	public String findNameById(Long poid);
	public Long findIdByName(String position);
	public int addNumById(Long poid);
	public int subNumById(Long poid);
	public int delete(Long poid);
}
