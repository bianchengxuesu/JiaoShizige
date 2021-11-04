package com.ischoolbar.programmer.service.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.GongXianDao;
import com.ischoolbar.programmer.entity.admin.Author;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.entity.admin.Lunwen;
import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.entity.admin.Teacher;

@Service
public class ProductService {

	private static final Logger log=LoggerFactory.getLogger(ProductService.class);
	
	@Autowired
	private GongXianDao gongxianMapper;
	
	public void saveProduct(Teacher p){
		if (p!=null) {
			log.debug("待插入的数据： {} ",p);
			
			gongxianMapper.insertSelective(p);
		}
	}
	public void insertAuthor(Author p){
		if (p!=null) {
			log.debug("待插入的数据： {} ",p);
			
			gongxianMapper.insertAuthor(p);
		}
	}
	public void insertDepartment(Department p){
		if (p!=null) {
			log.debug("待插入的数据： {} ",p);
			
			gongxianMapper.insertDepartment(p);
		}
	}
	
	public void insertQikanwenzhang(Qikanwenzhang p){
		if (p!=null) {
			log.debug("待插入的数据： {} ",p);
			
			gongxianMapper.insertQikanwenzhang(p);
		}
	}
	public void insertLunwen(Lunwen p){
		if (p!=null) {
			log.debug("待插入的数据： {} ",p);
			
			gongxianMapper.insertLunwen(p);
		}
	}
	
	
	
	
	
	
}


















