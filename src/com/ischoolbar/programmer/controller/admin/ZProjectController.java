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
 * ��Ŀ�����̨������
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/xiangmu")
@Controller
public class ZProjectController {
	
	@Autowired
	private ZProjectService zProjectService;
	
	/**
	 * ��Ŀ����ҳ��
	 * @return 
	 */
	@RequestMapping(value="/xiangmu")
	public ModelAndView jiaoxuehuojiang() {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//���浽list
		System.out.println("����Ϣ");
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
	 * ��Ŀ���
	 */
	@RequestMapping(value="/tianjia")
	public ModelAndView xiangmutianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/xiangmu/tianjia");
		return model;
	}
	
	/**
	 * Excel����
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
            throw new Exception("�ļ������ڣ�");
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
        //����excel���ݵ���
        /*
         * project��Ϊ���֣�Academic��CorporateApplied��
         * ����������Ŀ��������������ͬ��
         * �жϵ����ĸ����뷽��, 
         * Academic�Ÿ����ԣ�CorporateApplied�˸����ԡ�
         */
        AcademicProject academicProject = new AcademicProject();
        CorporateAppliedProject corporateAppliedProject = new CorporateAppliedProject();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            if(lo.size()>8){
            	//���Դ���8������Ϊ��Academic
            	insert(lo, academicProject);
            	zProjectService.addAcademicProject(academicProject);
            }else {
				//��Ϊ��Ӧ����Ŀ
            	insert(lo, corporateAppliedProject);
            	zProjectService.addAppliedProject(corporateAppliedProject);
			}
            System.out.println("��ӡ��Ϣ-->"+lo.toString());
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
        response.setContentType("application/vnd.ms-excel");//���������ļ�������
        response.setHeader("Content-disposition", "attachment;filename=CorporateAppliedProject.xlsx");//�ļ���
        OutputStream outputStream = response.getOutputStream();//��Ӧ�������
        
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
			response.setContentType("application/vnd.ms-excel");//���������ļ�������
	        response.setHeader("Content-disposition", "attachment;filename=AcademicProject.xlsx");//�ļ���
	        OutputStream outputStream = response.getOutputStream();//��Ӧ�������
	        
	        String file_path1 = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/AcademicProject.xlsx";
	        
	        File file = new File(file_path1);
	        XSSFWorkbook wk = new XSSFWorkbook(file); 
	        wk.write(outputStream);
	        wk.close();
	        outputStream.flush();
	        outputStream.close();
	}
}
