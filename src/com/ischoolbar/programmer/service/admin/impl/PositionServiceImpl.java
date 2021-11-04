package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ischoolbar.programmer.dao.admin.PositionDao;
import com.ischoolbar.programmer.entity.admin.Position;
import com.ischoolbar.programmer.service.admin.PositionService;

/**
 * 职务的Service实现类
 * @author yanyan
 *
 */
@Service
public class PositionServiceImpl implements PositionService {

	@Autowired
	private PositionDao positionDao;
	
	public int add(Position position) {
		return positionDao.add(position);
	}
	
	public List<Position> findAll(){
		return positionDao.findAll();
	}
	
	public List<Position> findAllPage(int page,int size){
		PageHelper.startPage(page, size);
		return positionDao.findAll();
	}
	
	public String findNameById(Long poid) {
		return positionDao.findNameById(poid);
	}
	
	public Long findIdByName(String position) {
		return positionDao.findIdByName(position);
	}
	
	public int addNumById(Long poid) {
		return positionDao.addNumById(poid);
	}
	public int subNumById(Long poid) {
		return positionDao.subNumById(poid);
	}
	
	public int delete(Long poid) {
		return positionDao.delete(poid);
	}

}
