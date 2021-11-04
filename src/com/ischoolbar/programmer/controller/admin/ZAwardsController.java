package com.ischoolbar.programmer.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Awards;
import com.ischoolbar.programmer.service.admin.ZAwardsService;
import com.ischoolbar.programmer.util.ImportExcelUtil;

/**
 * ��ѧ�񽱺�̨������
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/jiaoxuehuojiang")
@Controller
public class ZAwardsController {
	
	@Autowired
	private ZAwardsService zAwardsService;
	
	/**
	 * ��ѧ�񽱹���ҳ��
	 * @return 
	 */
	@RequestMapping(value="/jiaoxuehuojiang")
	public ModelAndView jiaoxuehuojiang(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//���浽list
		List<Awards> list = null;
		if(request.getParameter("text")!=null){
			list = zAwardsService.queryByKeywords(request.getParameter("text"));
		}else{
			list = zAwardsService.findAll();	
		}
		mv.addObject("List", list);
	/*	for(Awards award:list){
			System.out.println(award);
		}*/

		mv.setViewName("zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiang");
		return mv;
	}
	
	
	/**
	 * ��ѧ�����
	 */
	@RequestMapping(value="/jiaoxuehuojiangtianjia")
	public ModelAndView jiaoxuegongxiantianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiangtianjia");
		return model;
	}
	
	
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
        
        Awards awards = new Awards();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            //��������
            //awards.setAward_id((Long)lo.get(0));
            awards.setTeacher_name((String)lo.get(1));
            awards.setDepartment((String)lo.get(2));
            awards.setAward_name((String)lo.get(3));
            awards.setAward_level((String)lo.get(4));
            awards.setDate((String)lo.get(5));
            //�������ݿ�
            zAwardsService.add(awards);
            System.out.println("��ӡ��Ϣ-->"+lo.toString());
        }


        return "zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiangtianjia";
    }
	
	
	@RequestMapping(value = "/download.do")
	public void downloadTest(HttpServletResponse response) throws IOException, InvalidFormatException {
        response.setContentType("application/vnd.ms-excel");//���������ļ�������
        response.setHeader("Content-disposition", "attachment;filename=Awards.xlsx");//�ļ���
        OutputStream outputStream = response.getOutputStream();//��Ӧ�������
        
        
        String file_path = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/Awards.xlsx";
        
//        File file = new File(path+"/zhiligongxian/jiaoxuehuojiang/Awards.xlsx");
        File file = new File(file_path);
        XSSFWorkbook wk = new XSSFWorkbook(file); 
        wk.write(outputStream);
        wk.close();
        outputStream.flush();
        outputStream.close();
        
        //return "zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiangtianjia";
	}
	
/*	@RequestMapping(value="/query")
	public ModelAndView query(HttpServletRequest request){
		String text = request.getParameter("text");
		ModelAndView mv = new ModelAndView();
		mv.clear();
		
		List<Awards> list = zAwardsService.queryByKeywords(text);
		mv.addObject("List", list);


		mv.setViewName("zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiang");
		return mv;
	}*/
	/*	@RequestMapping(value="/uploadExcel/ajax")  
	public  void  ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response) throws Exception {  
	    MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    
	      
	      
	    InputStream in =null;  
	    List<List<Object>> listob = null;  
	    MultipartFile file = multipartRequest.getFile("upfile");  
	    if(file.isEmpty()){  
	        throw new Exception("�ļ������ڣ�");  
	    }  
	      
	    in = file.getInputStream();  
	    listob = new ImportExcelUtil().getBankListByExcel(in,file.getOriginalFilename());  
	      
	  //�ô��ɵ���service��Ӧ�����������ݱ��浽���ݿ��У���ֻ���������  
	    for (int i = 0; i < listob.size(); i++) {  
	        List<Object> lo = listob.get(i);  
	        System.out.println(lo.toString());
	    }  
	      
	    PrintWriter out = null;  
	    response.setCharacterEncoding("utf-8");  //��ֹajax���ܵ���������Ϣ����  
	    out = response.getWriter();  
	    out.print("�ļ�����ɹ���");  
	    out.flush();  
	    out.close();  
	} 
*/

}
