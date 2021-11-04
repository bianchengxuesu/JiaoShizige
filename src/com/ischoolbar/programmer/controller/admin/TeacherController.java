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
 * ��ʦ��̨������
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
	 * ��ѧ���׹���ҳ��
	 * @param model
	 * @return
	 */
	//��ʦ��ҳ(��ʦ��Ϣ��ҳ��ʾ)
	@RequestMapping(value="/teacher")
	public ModelAndView teacher(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//����ҵ��㷽��Service
		List<Teacher> list = teacherService.findAllPage(page, size);
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(list);
		//�������
      	model.addObject("ps",pageInfo);
        for(Teacher string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/teacher");
		return model;
	}
	//��ʦ�����ҳ
	@RequestMapping(value="/teacheradd",method=RequestMethod.GET)
	public ModelAndView teacheradd(ModelAndView model) {
		model.setViewName("base/teacher/teacheradd");
		return model;
	}
	
	//��ʦ��ϵ��ҳ
	@RequestMapping(value="/teacherlink",method=RequestMethod.GET)
	public ModelAndView teacherlink(ModelAndView model, @RequestParam(value = "teid", defaultValue = "0") Long teid) {
		//��ҳ������ʾ
		String teName = teacherService.findNameById(teid);
		String title = teName+"��ϵ����";
		model.addObject("title", title);
		//�����˵���ʾ
		List<Job> jobList = jobService.findAll();
		List<Department> deList = departmentService.findAll();
		List<Specialty> spList = specialtyService.findAll();
		List<Position> poList = positionService.findAll();
		model.addObject("jobList",jobList);
		model.addObject("deList",deList);
		model.addObject("spList",spList);
		model.addObject("poList",poList);
		//��ʦ��ϵ��ʾ
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
	
	//��Ա������ҳ(����ְ�ơ����š�רҵ��ְ�����Ա����ҳ���ҳ��ʾ)
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
		//����ҵ��㷽��Service
		String title = null;//��ҳ����
		String backHref = null;//��������
		List<Teacher> list = new ArrayList<Teacher>();
		if(jobid != 0) {
			String job = jobService.findNameById(jobid);
			title = job+"ְ�ƹ�ϵ";
			backHref = "jobtitle";
			list = teacherService.findTeacherByJob(job, page, size);
		}
		if(deid != 0) {
			String department = departmentService.findNameById(deid);
			title = department+"���Ź�ϵ";
			backHref = "department";
			list = teacherService.findTeacherByDepartment(department, page, size);
			//��Ӳ���ʱͬʱ���ְ��������˵���ʾ
			List<Position> poList = positionService.findAll();
			model.addObject("poList",poList);
		}
		if(spid != 0) {
			String specialty = specialtyService.findNameById(spid);
			title = specialty+"רҵ��ϵ";
			backHref = "specialty";
			list = teacherService.findTeacherBySpecialty(specialty, page, size);
		}
		if(poid != 0) {
			String position = positionService.findNameById(poid);
			title = position+"ְ���ϵ";
			backHref = "position";
			list = teacherService.findTeacherByPosition(position, page, size);
			//���ְ��ʱͬʱ��Ӳ��ŵ������˵���ʾ
			List<Department> deList = departmentService.findAll();
			model.addObject("deList",deList);
		}
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(list);
		//�������
		model.addObject("title", title);
		model.addObject("backHref", backHref);
      	model.addObject("ps",pageInfo);
        for(Teacher string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/managelink");
		return model;
	}
	
	//ְ����ҳ(ְ����Ϣ��ҳ��ʾ)
	@RequestMapping(value="/jobtitle", method=RequestMethod.GET)
	public ModelAndView jobtitle(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//����ҵ��㷽��Service
		List<Job> list = jobService.findAllPage(page, size);
		PageInfo<Job> pageInfo = new PageInfo<Job>(list);
		//�������
      	model.addObject("ps",pageInfo);
        for(Job string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/jobtitle");
		return model;
	}
	//������ҳ(������Ϣ��ҳ��ʾ)
	@RequestMapping(value="/department", method=RequestMethod.GET)
	public ModelAndView department(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		//����ҵ��㷽��Service
		List<Department> list = departmentService.findAllPage(page, size);
		PageInfo<Department> pageInfo = new PageInfo<Department>(list);
		//�������
      	model.addObject("ps",pageInfo);
        for(Department string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/department");
		return model;
	}
	//���������ҳ
	@RequestMapping(value="/departmentadd", method=RequestMethod.GET)
	public ModelAndView departmentadd(ModelAndView model) {
		model.setViewName("base/teacher/departmentadd");
		return model;
	}
	//רҵ��ҳ(רҵ��Ϣ��ҳ��ʾ)
	@RequestMapping(value="/specialty", method=RequestMethod.GET)
	public ModelAndView specialty(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
		//����ҵ��㷽��Service
		List<Specialty> list = specialtyService.findAllPage(page, size);
		PageInfo<Specialty> pageInfo = new PageInfo<Specialty>(list);
		//�������
      	model.addObject("ps",pageInfo);
        for(Specialty string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/specialty");
		return model;
	}
	
	//ְ����ҳ(ְ����Ϣ��ҳ��ʾ)
	@RequestMapping(value="/position", method=RequestMethod.GET)
	public ModelAndView position(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int size, ModelAndView model) {
		model.clear();
        //����ҵ��㷽��Service
      	List<Position> list = positionService.findAllPage(page,size);
      	PageInfo<Position> pageInfo = new PageInfo<Position>(list);
      	//�������
      	model.addObject("ps",pageInfo);
        for(Position string:list) {
    		System.out.println(string);
    	}
		model.setViewName("base/teacher/position");
		return model;
	}
	
	/**
	 * ��ʦ��Ϣ��Ӳ���
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
	 * ��ʦ�Զ���䣨ͨ����ʦ�����Զ�ƥ���ʦ��
	 * @param keyWord
	 * @return
	 */
	@RequestMapping(value="/AutoCompleteTeacher", method=RequestMethod.POST)
	@ResponseBody
	public List<Teacher> AutoCompleteTeacher(String keyWord){
		System.out.println(keyWord);
		String teacherName = keyWord.trim();
		System.out.println("�Զ���ȫstart��");
		List<Teacher> list;
		//�ж��Ƿ���ֵ
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
	 * ��ʦְ����Ӳ���
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
	 * ��ʦ������Ӳ���
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
	 * ��ʦְ����Ӳ���
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
	 * ��ʦ���ź�ְ����Ӳ���
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
	 * ��ʦרҵ��Ӳ���
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
	 * ְ����Ϣ��ӹ���
	 * @param job
	 * @return
	 */
	@RequestMapping(value="/addJob.do", method=RequestMethod.POST)
	public String addJob(Job job){
		jobService.add(job);
		return "redirect:/base/teacher/jobtitle"; 
	}
	
	/**
	 * ������Ϣ��Ӳ���
	 * @param department
	 * @return
	 */
	@RequestMapping(value="/addDepartment.do", method=RequestMethod.POST)
	public String addDepartment(Department department){
		departmentService.add(department);
		return "redirect:/base/teacher/department";
	}
	
	/**
	 * רҵ��Ϣ��Ӳ���
	 * @param specialty
	 * @return
	 */
	@RequestMapping(value="/addSpecialty.do", method=RequestMethod.POST)
	public String addSpecialty(Specialty specialty){
		specialtyService.add(specialty);
		return "redirect:/base/teacher/specialty";
	}
	
	/**
	 * ְ����Ϣ��Ӳ���
	 * @param position
	 * @return
	 */
	@RequestMapping(value="/addPosition.do", method=RequestMethod.POST)
	public String addPosition(Position position){
		positionService.add(position);
		return "redirect:/base/teacher/position";
	}
	
	/**
	 * ��Ա������Ӳ���
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
//					request.setAttribute("msg", "�Բ������˴εĲ���δ�ɹ������ݿ����Ѿ����ظ��ļ�¼��!");//��ʵ��
//				}else {
//					request.setAttribute("msg", "�Բ������˴εĲ���δ�ɹ�������Աְ���Ѿ��м�¼��!");//δʵ��
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
	 * ��ʦ��Ϣɾ������
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteTeacher.do", method=RequestMethod.POST)
	public String deleteTeacher(Long delid){
		Long uid = teacherService.findUidById(delid);
		teacherService.delete(delid);
		userService.delete(uid);
		//����ʦ����ְ�ơ����š�רҵ��ְ��ɾ����ʦʱͬʱ����Ӧ������-1
		
		return "redirect:/base/teacher/teacher";
	}
	
	/**
	 * ְ����Ϣɾ������
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteJob.do", method=RequestMethod.POST)
	public String deleteJob(Long delid){
		jobService.delete(delid);
		//����ְ���������򽫴��˵�ְ��ɾ��
		
		return "redirect:/base/teacher/jobtitle";
	}
	
	/**
	 * ������Ϣɾ������
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteDepartment.do", method=RequestMethod.POST)
	public String deleteDepartment(Long delid){
		departmentService.delete(delid);
		//���˲����������򽫴��˵Ĳ���ɾ��
		
		return "redirect:/base/teacher/department";
	}
	
	/**
	 * רҵ��Ϣɾ������
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deleteSpecialty.do", method=RequestMethod.POST)
	public String deleteSpecialty(Long delid){
		specialtyService.delete(delid);
		//����רҵ�������򽫴��˵�רҵɾ��
		
		return "redirect:/base/teacher/specialty";
	}
	
	/**
	 * ְ����Ϣɾ������
	 * @param delid
	 * @return
	 */
	@RequestMapping(value="/deletePosition.do", method=RequestMethod.POST)
	public String deletePosition(Long delid){
		positionService.delete(delid);
		//����ְ���������򽫴��˵�ְ��ɾ��
		
		return "redirect:/base/teacher/position";
	}
	
	/**
	 * ��ʦְ��ɾ������
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
	 * ��ʦ����ɾ������
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
	 * ��ʦרҵɾ������
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
	 * ��ʦְ��ɾ������
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
	 * ��Ա����ɾ������
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
