package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Course;
import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;
import com.ischoolbar.programmer.entity.admin.Teacher;
import com.ischoolbar.programmer.service.admin.CourseService;
import com.ischoolbar.programmer.service.admin.GongXianService;
import com.ischoolbar.programmer.service.admin.TeacherService;

/**
 * 教学贡献后台控制器
 * @author 13212
 *
 */
@RequestMapping("/jiaoxuegongxian")
@Controller
public class GongXianController {
	
	
	@Autowired
	private GongXianService gongxianService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CourseService courseService;
	
	/**
	 * 教学贡献管理页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/jiaoxuegongxian",method=RequestMethod.GET)
	public ModelAndView jiaoxuegongxian(ModelAndView model) {
		model.setViewName("jiaoxuegongxian/jiaoxuegongxian");
		return model;
	}
	@RequestMapping(value="/jiaoxuegongxiantianjia",method=RequestMethod.GET)
	public ModelAndView jiaoxuegongxiantianjia(ModelAndView model) {
		model.setViewName("jiaoxuegongxian/jiaoxuegongxiantianjia");
		return model;
	}
	
	/**
	 * 课程自动填充功能（通过课程名称自动匹配课程）
	 * @param keyWord
	 * @return
	 */
	@RequestMapping(value="/AutoCompleteCourse",method=RequestMethod.POST)
	@ResponseBody
	public List<Course> AutoCompleteCourse(String keyWord){
		System.out.println(keyWord);
		String courseName = keyWord.trim();
		System.out.println("自动补全start：");
		List<Course> list;
		//判断是否有值
	    if (courseName!= null && courseName.length() != 0) {
	    	list = courseService.findCourseByName(courseName);
	        for (Course co:list){
	        	System.out.println(co.toString());
	        }
	        return list;
	    }
	    return null;
	}
	
	/**
	 * 教师自动填充（通过教师名称自动匹配教师）
	 * @param keyWord
	 * @return
	 */
	@RequestMapping(value="/AutoCompleteTeacher",method=RequestMethod.POST)
	@ResponseBody
	public List<Teacher> AutoCompleteTeacher(String keyWord){
		System.out.println(keyWord);
		String teacherName = keyWord.trim();
		System.out.println("自动补全start：");
		List<Teacher> list;
		//判断是否有值
	    if (teacherName!= null && teacherName.length() != 0) {
	    	list = teacherService.findTeacherByName(teacherName);
	        for (Teacher te :list){
	        	System.out.println(te.toString());
	        }
	        return list;
	    }
	    return null;
	}
	
	/**
	 * 贡献信息添加操作
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> add(Jiaoxuegongxian jiaoxuegongxian){
		Map<String,String> ret =new HashMap<String,String>();
		ret.put("type", "success");
		ret.put("msg", "添加成功！");
		if(gongxianService.add(jiaoxuegongxian)<=0) {
			ret.put("type", "error");
			ret.put("msg", "添加失败请联系管理员！");
			return ret;
		}
		return ret;
		
	}
	/**
	 * 贡献信息获取所有
	 */
	@RequestMapping(value="/findAll")
	@ResponseBody
	public ModelAndView findAll(Model model){
		// 将查询的结果集合显示到jiaoxuegongxian/jiaoxuegongxian
        ModelAndView m = new ModelAndView();
        m.clear();
        // 存储list
        System.out.println("2222");
        List<Jiaoxuegongxian> list=gongxianService.findAll();
        m.addObject("List", list);
        for(Jiaoxuegongxian string:list) {
    		System.out.println(string);
    	}
		m.setViewName("jiaoxuegongxian/jiaoxuegongxian");
		return m;
	}
	
	/**
	 * 根据课程和老师搜索贡献信息
	 */
	@RequestMapping(value="/search",method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView findAllByCourseOrTeacher(String KeyWord){
		// 将搜索的结果集合显示到jiaoxuegongxian/jiaoxuegongxian
		ModelAndView m = new ModelAndView();
        m.clear();
        // 存储list
        System.out.println("2222");
        List<Jiaoxuegongxian> List = gongxianService.findAllByCourseOrTeacher(KeyWord.trim());
        m.addObject("List",List);
        for(Jiaoxuegongxian string:List) {
        	System.out.println(string);
	    }
        m.setViewName("jiaoxuegongxian/jiaoxuegongxian");
		return m;
	}
	
	/**
	 * 删除贡献信息
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public String delete(Long id){
		System.out.println("222");
		gongxianService.delete(id);
		return "jiaoxuegongxian/jiaoxuegongxian";
		
	}
	/**
	 * 贡献id获取
	 */
	@RequestMapping(value="/jiaoxuegongxianxiugai")
	public ModelAndView findById(Long id,ModelAndView yonghu){
		System.out.println(id);
		Jiaoxuegongxian userid=gongxianService.findById(id);
		// 将查询的结果集合显示到jiaoxuegongxian/jiaoxuegongxianxiugai
		System.out.println("11111");
		
		
		
		yonghu.setViewName("jiaoxuegongxian/jiaoxuegongxianxiugai");
		yonghu.addObject("id", userid.getId());
		yonghu.addObject("course", userid.getCourse());
		yonghu.addObject("teacher", userid.getTeacher());
		yonghu.addObject("jiaomi", userid.getJiaomi());
		yonghu.addObject("conums", userid.getConums());
		yonghu.addObject("cochs", userid.getCochs());
		yonghu.addObject("cocredits", userid.getCocredits());
		yonghu.addObject("coches", userid.getCoches());
		yonghu.addObject("ecochs", userid.getEcochs());
		yonghu.addObject("syear", userid.getSyear());
		yonghu.addObject("beizhu", userid.getBeizhu());
		return yonghu;
	}
	/**
	 * 贡献信息编辑操作
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> edit(Jiaoxuegongxian jiaoxuegongxian){
		Map<String,String> ret =new HashMap<String,String>();
		System.out.println("333");
		ret.put("type", "success");
		ret.put("msg", "修改成功！");
		if(gongxianService.edit(jiaoxuegongxian)<=0) {
			ret.put("type", "error");
			ret.put("msg", "修改失败请联系管理员！");
			return ret;
		}
		return ret;
		
	}
}
