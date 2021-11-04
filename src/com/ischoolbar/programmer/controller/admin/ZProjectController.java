package com.ischoolbar.programmer.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.AcademicProject;
import com.ischoolbar.programmer.entity.admin.Awards;
import com.ischoolbar.programmer.entity.admin.CorporateAppliedProject;
import com.ischoolbar.programmer.service.admin.ZAwardsService;
import com.ischoolbar.programmer.service.admin.ZProjectService;
import com.ischoolbar.programmer.util.ImportExcelUtil;



/**
 * 项目管理后台控制器
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/xiangmu")
@Controller
public class ZProjectController {
	
	@Autowired
	private ZProjectService zProjectService;
	
	/**
	 * 项目管理页面
	 * @return 
	 */
	@RequestMapping(value="/xiangmu")
	public ModelAndView jiaoxuehuojiang() {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//保存到list
		System.out.println("获奖信息");
		List<CorporateAppliedProject> appliedList = zProjectService.findAllAppliedProjects();
		List<AcademicProject> academicList = zProjectService.findAllAcademicProjects();
		mv.addObject("appliedList",appliedList);
		mv.addObject("academicList",academicList);
//		mv.addObject("List", list);
//		for(Awards award:list){
//			System.out.println(award);
//		}
		mv.setViewName("zhiligongxian/xiangmu/xiangmu");
		return mv;
	}
	
	
	/**
	 * 项目添加
	 */
	@RequestMapping(value="/tianjia")
	public ModelAndView xiangmutianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/xiangmu/tianjia");
		return model;
	}
	
	/**
	 * Excel导入
	 * @param request
	 * @return
	 * @throws Exception
	 * @author twl
	 */
	@RequestMapping(value = "/form.do")
    public String form(HttpServletRequest request)throws Exception{
        System.out.println("uploadExcel--form run");
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

        InputStream in =null;
        List<List<Object>> listob = null;
        MultipartFile file = multipartRequest.getFile("upfile");
        System.out.println("get file");
        if(file.isEmpty()){
            throw new Exception("文件不存在！");
        }else {
            System.out.println("file not empty");
        }
        in = file.getInputStream();
        listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());
        in.close();
        if (listob != null) {
            System.out.println("listob not null");
            System.out.println(listob.toString());
        }else{
            System.out.println("listob is null");
        }
        //进行excel数据导入
        /*
         * project分为两种：Academic和CorporateApplied，
         * 根据两种项目包含的属性数不同，
         * 判断调用哪个插入方法, 
         * Academic九个属性，CorporateApplied八个属性。
         */
        AcademicProject academicProject = new AcademicProject();
        CorporateAppliedProject corporateAppliedProject = new CorporateAppliedProject();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            if(lo.size()>8){
            	//属性大于8个，认为是Academic
            	insert(lo, academicProject);
            	zProjectService.addAcademicProject(academicProject);
            }else {
				//认为是应用项目
            	insert(lo, corporateAppliedProject);
            	zProjectService.addAppliedProject(corporateAppliedProject);
			}
            System.out.println("打印信息-->"+lo.toString());
        }


        return "zhiligongxian/xiangmu/tianjia";
    }
	
	public void insert(List<Object> lo,AcademicProject academicProject){
		//academicProject.setAcademic_project_id(academic_project_id);
		academicProject.setProject_cycle((String)lo.get(1));
		academicProject.setApprove_year((String)lo.get(2));
		academicProject.setDepartment((String)lo.get(3));
		academicProject.setTeacher_name((String)lo.get(4));
		academicProject.setProject_name((String)lo.get(5));
		academicProject.setCategory((String)lo.get(6));
		academicProject.setLevel((String)lo.get(7));
		academicProject.setFunding((String)lo.get(8));
	}
	
	public void insert(List<Object> lo,CorporateAppliedProject project){
		//project.setAcademic_project_id(academic_project_id);
		project.setApprove_year((String)lo.get(1));
		project.setDepartment((String)lo.get(2));
		project.setTeacher_name((String)lo.get(3));
		project.setProject_name((String)lo.get(4));
		project.setCategory((String)lo.get(5));
		project.setFunding((String)lo.get(6));
		project.setClient((String)lo.get(7));
			
	}
	
	@RequestMapping(value = "/download.do")
	public void downloadTest(HttpServletResponse response) throws IOException, InvalidFormatException {
        response.setContentType("application/vnd.ms-excel");//定义下载文件的类型
        response.setHeader("Content-disposition", "attachment;filename=CorporateAppliedProject.xlsx");//文件名
        OutputStream outputStream = response.getOutputStream();//相应的输出流
        
        String file_path1 = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/CorporateAppliedProject.xlsx";
        
        File file = new File(file_path1);
        XSSFWorkbook wk = new XSSFWorkbook(file); 
        wk.write(outputStream);
        wk.close();
        outputStream.flush();
        outputStream.close();

	}
	
	@RequestMapping(value = "/downloadAcademic.do")
	public void downloadAcademic(HttpServletResponse response) throws IOException, InvalidFormatException {
			response.setContentType("application/vnd.ms-excel");//定义下载文件的类型
	        response.setHeader("Content-disposition", "attachment;filename=AcademicProject.xlsx");//文件名
	        OutputStream outputStream = response.getOutputStream();//相应的输出流
	        
	        String file_path1 = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/AcademicProject.xlsx";
	        
	        File file = new File(file_path1);
	        XSSFWorkbook wk = new XSSFWorkbook(file); 
	        wk.write(outputStream);
	        wk.close();
	        outputStream.flush();
	        outputStream.close();
	}
}
