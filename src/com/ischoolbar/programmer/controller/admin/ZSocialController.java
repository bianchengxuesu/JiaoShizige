package com.ischoolbar.programmer.controller.admin;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

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




import com.ischoolbar.programmer.entity.admin.SocialService;
import com.ischoolbar.programmer.service.admin.ZSocialService;
import com.ischoolbar.programmer.util.ImportExcelUtil;

/**
 * 社会兼职后台控制器
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/shehuijianzhi")
@Controller
public class ZSocialController {
	

	@Autowired
	private ZSocialService zSocialService;
	
	
	/**
	 * 社会兼职管理页面
	 * @return 
	 */
	@RequestMapping(value="/shehuijianzhi")
	public ModelAndView shehuijianzhi() {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//保存到list
		List<SocialService> list = zSocialService.findAll();
		mv.addObject("socialList", list);
//		List<Awards> list = zAwardsService.findAll();
//		mv.addObject("List", list);
//		for(Awards award:list){
//			System.out.println(award);
//		}
		mv.setViewName("zhiligongxian/shehuijianzhi/shehuijianzhi");
		return mv;
	}
	
	
	/**
	 * 添加
	 * @author twl
	 */
	@RequestMapping(value="/tianjia")
	public ModelAndView shehuijianzhitianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/shehuijianzhi/tianjia");
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

        SocialService socialService = new SocialService();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            socialService.setTeacher_name((String)lo.get(1));
            socialService.setDepartment((String)lo.get(2));
            socialService.setService_name((String)lo.get(3));
            socialService.setCategory((String)lo.get(4));
            zSocialService.add(socialService);
            System.out.println("打印信息-->"+lo.toString());
        }


        return "zhiligongxian/shehuijianzhi/tianjia";
    }
	
	@RequestMapping(value = "/download.do")
	public void downloadTest(HttpServletResponse response) throws IOException, InvalidFormatException {
        response.setContentType("application/vnd.ms-excel");//定义下载文件的类型
        response.setHeader("Content-disposition", "attachment;filename=SocialService.xlsx");//文件名
        OutputStream outputStream = response.getOutputStream();//相应的输出流
        
        String file_path = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/SocialService.xlsx";
        
        File file = new File(file_path);
        XSSFWorkbook wk = new XSSFWorkbook(file); 
        wk.write(outputStream);
        wk.close();
        outputStream.flush();
        outputStream.close();
        
	}
	

}

