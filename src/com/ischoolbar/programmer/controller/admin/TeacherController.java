package com.ischoolbar.programmer.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.entity.admin.Job;
import com.ischoolbar.programmer.entity.admin.Position;
import com.ischoolbar.programmer.entity.admin.Specialty;
import com.ischoolbar.programmer.entity.admin.Teacher;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.DepartmentService;
import com.ischoolbar.programmer.service.admin.JobService;
import com.ischoolbar.programmer.service.admin.PositionService;
import com.ischoolbar.programmer.service.admin.SpecialtyService;
import com.ischoolbar.programmer.service.admin.TeacherService;
import com.ischoolbar.programmer.service.admin.UserService;

/**
 * 教师后台控制器
 * @author Dell
 *
 */
@RequestMapping("/base/teacher")
@Controller
public class TeacherController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private JobService jobService;
	
	@Autowired
	private DepartmentService departmentService;
	
	@Autowired
	private SpecialtyService specialtyService;
	
	@Autowired
	private PositionService positionService;
	
	/**
	 * 教学贡献管理页面
	 * @param model
	 * @return
	 */
	//教师网页(教师信息分页显示)
	@RequestMapping(value="/teacher")
	public ModelAndView teacher(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//调用业务层方法Service
		List<Teacher> list = teacherService.findAllPage(page, size);
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(list);
		//存进数据
      	model.addObject("ps",pageInfo);
        for(Teacher string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/teacher");
		return model;
	}
	//教师添加网页
	@RequestMapping(value="/teacheradd",method=RequestMethod.GET)
	public ModelAndView teacheradd(ModelAndView model) {
		model.setViewName("base/teacher/teacheradd");
		return model;
	}
	
	//教师关系网页
	@RequestMapping(value="/teacherlink",method=RequestMethod.GET)
	public ModelAndView teacherlink(ModelAndView model, @RequestParam(value = "teid", defaultValue = "0") Long teid) {
		//网页标题显示
		String teName = teacherService.findNameById(teid);
		String title = teName+"关系设置";
		model.addObject("title", title);
		//下拉菜单显示
		List<Job> jobList = jobService.findAll();
		List<Department> deList = departmentService.findAll();
		List<Specialty> spList = specialtyService.findAll();
		List<Position> poList = positionService.findAll();
		model.addObject("jobList",jobList);
		model.addObject("deList",deList);
		model.addObject("spList",spList);
		model.addObject("poList",poList);
		//教师关系显示
		String job = teacherService.findJobById(teid);
		Long jobid = jobService.findIdByName(job);
		String department = teacherService.findDepartmentById(teid);
		Long deid = departmentService.findIdByName(department);
		String specialty = teacherService.findSpecialtyById(teid);
		Long spid = specialtyService.findIdByName(specialty);
		String position = teacherService.findPositionById(teid);
		Long poid = positionService.findIdByName(position);
		model.addObject("job",job);
		model.addObject("jobid",jobid);
		model.addObject("department",department);
		model.addObject("deid",deid);
		model.addObject("specialty",specialty);
		model.addObject("spid",spid);
		model.addObject("position",position);
		model.addObject("poid",poid);
		model.setViewName("base/teacher/teacherlink");
		return model;
	}
	
	//人员管理网页(包括职称、部门、专业、职务的人员管理页面分页显示)
	@RequestMapping(value="/managelink", method=RequestMethod.GET)
	public ModelAndView managelink(
			@RequestParam(defaultValue = "1") int page, 
			@RequestParam(defaultValue = "10") int size, 
			ModelAndView model, 
			@RequestParam(value = "jobid", defaultValue = "0") Long jobid, 
			@RequestParam(value = "deid", defaultValue = "0") Long deid, 
			@RequestParam(value = "spid", defaultValue = "0") Long spid, 
			@RequestParam(value = "poid", defaultValue = "0") Long poid
			) {
		model.clear();
		//调用业务层方法Service
		String title = null;//网页标题
		String backHref = null;//返回链接
		List<Teacher> list = new ArrayList<Teacher>();
		if(jobid != 0) {
			String job = jobService.findNameById(jobid);
			title = job+"职称关系";
			backHref = "jobtitle";
			list = teacherService.findTeacherByJob(job, page, size);
		}
		if(deid != 0) {
			String department = departmentService.findNameById(deid);
			title = department+"部门关系";
			backHref = "department";
			list = teacherService.findTeacherByDepartment(department, page, size);
			//添加部门时同时添加职务的下拉菜单显示
			List<Position> poList = positionService.findAll();
			model.addObject("poList",poList);
		}
		if(spid != 0) {
			String specialty = specialtyService.findNameById(spid);
			title = specialty+"专业关系";
			backHref = "specialty";
			list = teacherService.findTeacherBySpecialty(specialty, page, size);
		}
		if(poid != 0) {
			String position = positionService.findNameById(poid);
			title = position+"职务关系";
			backHref = "position";
			list = teacherService.findTeacherByPosition(position, page, size);
			//添加职务时同时添加部门的下拉菜单显示
			List<Department> deList = departmentService.findAll();
			model.addObject("deList",deList);
		}
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(list);
		//存进数据
		model.addObject("title", title);
		model.addObject("backHref", backHref);
      	model.addObject("ps",pageInfo);
        for(Teacher string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/managelink");
		return model;
	}
	
	//职称网页(职称信息分页显示)
	@RequestMapping(value="/jobtitle", method=RequestMethod.GET)
	public ModelAndView jobtitle(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//调用业务层方法Service
		List<Job> list = jobService.findAllPage(page, size);
		PageInfo<Job> pageInfo = new PageInfo<Job>(list);
		//存进数据
      	model.addObject("ps",pageInfo);
        for(Job string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/jobtitle");
		return model;
	}
	//部门网页(部门信息分页显示)
	@RequestMapping(value="/department", method=RequestMethod.GET)
	public ModelAndView department(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		//调用业务层方法Service
		List<Department> list = departmentService.findAllPage(page, size);
		PageInfo<Department> pageInfo = new PageInfo<Department>(list);
		//存进数据
      	model.addObject("ps",pageInfo);
        for(Department string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/department");
		return model;
	}
	//部门添加网页
	@RequestMapping(value="/departmentadd", method=RequestMethod.GET)
	public ModelAndView departmentadd(ModelAndView model) {
		model.setViewName("base/teacher/departmentadd");
		return model;
	}
	//专业网页(专业信息分页显示)
	@RequestMapping(value="/specialty", method=RequestMethod.GET)
	public ModelAndView specialty(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//调用业务层方法Service
		List<Specialty> list = specialtyService.findAllPage(page, size);
		PageInfo<Specialty> pageInfo = new PageInfo<Specialty>(list);
		//存进数据
      	model.addObject("ps",pageInfo);
        for(Specialty string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/specialty");
		return model;
	}
	
	//职务网页(职务信息分页显示)
	@RequestMapping(value="/position", method=RequestMethod.GET)
	public ModelAndView position(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
        //调用业务层方法Service
      	List<Position> list = positionService.findAllPage(page,size);
      	PageInfo<Position> pageInfo = new PageInfo<Position>(list);
      	//存进数据
      	model.addObject("ps",pageInfo);
        for(Position string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/position");
		return model;
	}
	
	/**
	 * 教师信息添加操作
	 * @param user
	 * @param teacher
	 * @return
	 */
	@RequestMapping(value="/addTeacher.do", method=RequestMethod.POST)
	public String addTeacher(User user, Teacher teacher){
		userService.add(user);
		teacher.setUid(userService.findIdByUsername(user.getUsername()));
		teacherService.add(teacher);
		return "redirect:/base/teacher/teacher";
	}
	
	/**
	 * 教师自动填充（通过教师名称自动匹配教师）
	 * @param keyWord
	 * @return
	 */
	@RequestMapping(value="/AutoCompleteTeacher", method=RequestMethod.POST)
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
	 * 教师职称添加操作
	 * @param teid
	 * @param jobid
	 * @return
	 */
	@RequestMapping(value="/addJobForTeacher.do", method=RequestMethod.POST)
	public String addJobForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long jobid){
		String job = jobService.findNameById(jobid);
		teacherService.addJobForTeacher(teid, job);
		jobService.addNumById(jobid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师部门添加操作
	 * @param teid
	 * @param deid
	 * @return
	 */
	public String addDepartmentForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long deid) {
		String department = departmentService.findNameById(deid);
		teacherService.addDepartmentForTeacher(teid, department);
		departmentService.addNumById(deid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师职务添加操作
	 * @param teid
	 * @param poid
	 * @return
	 */
	public String addPositionForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long poid) {
		String position = positionService.findNameById(poid);
		teacherService.addPositionForTeacher(teid, position);
		positionService.addNumById(poid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师部门和职务添加操作
	 * @param teid
	 * @param deid
	 * @param poid
	 * @return
	 */
	@RequestMapping(value="/addDepAndPosForTeacher.do", method=RequestMethod.POST)
	public String addDepartmentForTeacher(
			@RequestParam(value = "teid", defaultValue = "0") Long teid, 
			@RequestParam(value = "deid", defaultValue = "0") Long deid, 
			@RequestParam(value = "poid", defaultValue = "0") Long poid
			) {
		if(deid != 0) addDepartmentForTeacher(teid, deid);
		if(poid != 0) addPositionForTeacher(teid, poid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师专业添加操作
	 * @param teid
	 * @param spid
	 * @return
	 */
	@RequestMapping(value="/addSpecialtyForTeacher.do", method=RequestMethod.POST)
	public String addSpecialtyForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long spid){
		String specialty = specialtyService.findNameById(spid);
		teacherService.addSpecialtyForTeacher(teid, specialty);
		specialtyService.addNumById(spid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 职称信息添加工作
	 * @param job
	 * @return
	 */
	@RequestMapping(value="/addJob.do", method=RequestMethod.POST)
	public String addJob(Job job){
		jobService.add(job);
		return "redirect:/base/teacher/jobtitle"; 
	}
	
	/**
	 * 部门信息添加操作
	 * @param department
	 * @return
	 */
	@RequestMapping(value="/addDepartment.do", method=RequestMethod.POST)
	public String addDepartment(Department department){
		departmentService.add(department);
		return "redirect:/base/teacher/department";
	}
	
	/**
	 * 专业信息添加操作
	 * @param specialty
	 * @return
	 */
	@RequestMapping(value="/addSpecialty.do", method=RequestMethod.POST)
	public String addSpecialty(Specialty specialty){
		specialtyService.add(specialty);
		return "redirect:/base/teacher/specialty";
	}
	
	/**
	 * 职务信息添加操作
	 * @param position
	 * @return
	 */
	@RequestMapping(value="/addPosition.do", method=RequestMethod.POST)
	public String addPosition(Position position){
		positionService.add(position);
		return "redirect:/base/teacher/position";
	}
	
	/**
	 * 人员管理添加操作
	 * @param teacher
	 * @param jobid
	 * @param deid
	 * @param spid
	 * @param poid
	 * @param department_poid
	 * @param position_deid
	 * @return
	 */
	@RequestMapping(value="/addTeacherForAffiliate.do", method=RequestMethod.POST)
	public String addTeacherForAffiliate(
			Teacher teacher,
//			HttpSession request, 
			@RequestParam(value = "jobid", defaultValue = "0") Long jobid, 
			@RequestParam(value = "deid", defaultValue = "0") Long deid, 
			@RequestParam(value = "spid", defaultValue = "0") Long spid, 
			@RequestParam(value = "poid", defaultValue = "0") Long poid,
			@RequestParam(value = "department_poid", defaultValue = "0") Long department_poid,
			@RequestParam(value = "position_deid", defaultValue = "0") Long position_deid
			) {
		String id = null;
		String url = null;
		if(jobid != 0) {
			id = String.valueOf(jobid);
			Long teid = teacher.getTeid();
			String haveJob = teacherService.findJobById(teid);
			if(haveJob == null || haveJob.equals("")) {
				addJobForTeacher(teid,jobid);
			}
//			else {
//				if(havaJob.equals(addJob)) {
//					request.setAttribute("msg", "对不起，您此次的操作未成功，数据库中已经有重复的记录！!");//已实现
//				}else {
//					request.setAttribute("msg", "对不起，您此次的操作未成功，该人员职称已经有记录！!");//未实现
//				}
//			}
			url = "redirect:/base/teacher/managelink?jobid=";
		}
		if(deid != 0 || position_deid != 0) {
			id = String.valueOf(deid);
			Long teid = teacher.getTeid();
			String haveDepartment = teacherService.findDepartmentById(teid);
			if(haveDepartment == null || haveDepartment.equals("")) {
				if(deid != 0) addDepartmentForTeacher(teid,deid);
				if(position_deid != 0) addDepartmentForTeacher(teid,position_deid);
			}

			url = "redirect:/base/teacher/managelink?deid=";
		}
		if(spid != 0) {
			id = String.valueOf(spid);
			Long teid = teacher.getTeid();
			String haveSpecialty = teacherService.findSpecialtyById(teid);
			if(haveSpecialty == null || haveSpecialty.equals("")) {
				addSpecialtyForTeacher(teid,spid);
			}
			url = "redirect:/base/teacher/managelink?spid=";
		}
		if(poid != 0 || department_poid != 0) {
			id = String.valueOf(poid);
			Long teid = teacher.getTeid();
			String havePosition = teacherService.findPositionById(teid);
			if(teid != null || havePosition == null || havePosition.equals("")) {
				if(poid != 0) addPositionForTeacher(teid,poid);
				if(department_poid != 0) addPositionForTeacher(teid,department_poid);
			}
			url = "redirect:/base/teacher/managelink?poid=";
		}
		if(department_poid != 0) {
			id = String.valueOf(deid);
			url = "redirect:/base/teacher/managelink?deid=";
		}
		if(position_deid != 0) {
			id = String.valueOf(poid);
			url = "redirect:/base/teacher/managelink?poid=";
		}
		return url+id;
	}
	
	/**
	 * 教师信息删除操作
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteTeacher.do", method=RequestMethod.POST)
	public String deleteTeacher(Long delid){
		Long uid = teacherService.findUidById(delid);
		teacherService.delete(delid);
		userService.delete(uid);
		//若教师存在职称、部门、专业、职务，删除教师时同时将相应的人数-1
		
		return "redirect:/base/teacher/teacher";
	}
	
	/**
	 * 职称信息删除操作
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteJob.do", method=RequestMethod.POST)
	public String deleteJob(Long delid){
		jobService.delete(delid);
		//若此职称有人数则将此人的职称删除
		
		return "redirect:/base/teacher/jobtitle";
	}
	
	/**
	 * 部门信息删除操作
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteDepartment.do", method=RequestMethod.POST)
	public String deleteDepartment(Long delid){
		departmentService.delete(delid);
		//若此部门有人数则将此人的部门删除
		
		return "redirect:/base/teacher/department";
	}
	
	/**
	 * 专业信息删除操作
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteSpecialty.do", method=RequestMethod.POST)
	public String deleteSpecialty(Long delid){
		specialtyService.delete(delid);
		//若此专业有人数则将此人的专业删除
		
		return "redirect:/base/teacher/specialty";
	}
	
	/**
	 * 职务信息删除操作
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deletePosition.do", method=RequestMethod.POST)
	public String deletePosition(Long delid){
		positionService.delete(delid);
		//若此职务有人数则将此人的职务删除
		
		return "redirect:/base/teacher/position";
	}
	
	/**
	 * 教师职称删除操作
	 * @param teid
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteJobForTeacher.do", method=RequestMethod.POST)
	public String deleteJobForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long delid){
		teacherService.deleteJobForTeacher(teid);
		jobService.subNumById(delid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师部门删除操作
	 * @param teid
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteDepartmentForTeacher.do", method=RequestMethod.POST)
	public String deleteDepartmentForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long delid){
		teacherService.deleteDepartmentForTeacher(teid);
		departmentService.subNumById(delid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师专业删除操作
	 * @param teid
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteSpecialtyForTeacher.do", method=RequestMethod.POST)
	public String deleteSpecialtyForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long delid){
		teacherService.deleteSpecialtyForTeacher(teid);
		specialtyService.subNumById(delid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	
	/**
	 * 教师职务删除操作
	 * @param teid
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deletePositionForTeacher.do", method=RequestMethod.POST)
	public String deletePositionForTeacher(@RequestParam(value = "teid", defaultValue = "0") Long teid, Long delid){
		teacherService.deletePositionForTeacher(teid);
		positionService.subNumById(delid);
		return "redirect:/base/teacher/teacherlink?teid="+String.valueOf(teid);
	}
	/**
	 * 人员管理删除操作
	 * @param delid
	 * @param jobid
	 * @param deid
	 * @param spid
	 * @param poid
	 * @return
	 */
	@RequestMapping(value="/deleteTeacherForAffiliate.do", method=RequestMethod.POST)
	public String deleteTeacherForAffiliate(
			Long delid,
			@RequestParam(value = "jobid", defaultValue = "0") Long jobid, 
			@RequestParam(value = "deid", defaultValue = "0") Long deid, 
			@RequestParam(value = "spid", defaultValue = "0") Long spid, 
			@RequestParam(value = "poid", defaultValue = "0") Long poid
			) {
		String id = null;
		String url = null;
		if(jobid !=0 ) {
			id = String.valueOf(jobid);
			deleteJobForTeacher(delid, jobid);
			url = "redirect:/base/teacher/managelink?jobid=";
		}
		if(deid !=0 ) {
			id = String.valueOf(deid);
			deleteDepartmentForTeacher(delid, deid);
			url = "redirect:/base/teacher/managelink?deid=";
		}
		if(spid !=0 ) {
			id = String.valueOf(spid);
			deleteSpecialtyForTeacher(delid, spid);
			url = "redirect:/base/teacher/managelink?spid=";
		}
		if(poid !=0 ) {
			id = String.valueOf(poid);
			deletePositionForTeacher(delid, poid);
			url = "redirect:/base/teacher/managelink?poid=";
		}
		return url+id;
	}
	
}
