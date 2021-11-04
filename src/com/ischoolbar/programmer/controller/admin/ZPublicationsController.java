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

import com.ischoolbar.programmer.entity.admin.Awards;
import com.ischoolbar.programmer.entity.admin.Publications;
import com.ischoolbar.programmer.service.admin.ZAwardsService;
import com.ischoolbar.programmer.service.admin.ZPublicationsService;
import com.ischoolbar.programmer.util.ImportExcelUtil;



/**
 * 专著教材管理后台控制器
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/zhuanzhujiaocai")
@Controller
public class ZPublicationsController {
	
	@Autowired
	private ZPublicationsService zPublicationsService;

	
	/**
	 * 专著教材管理页面
	 * @return 
	 */
	@RequestMapping(value="/zhuanzhujiaocai")
	public ModelAndView jiaoxuehuojiang() {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//保存到list
		System.out.println("获奖信息");
		List<Publications> list = zPublicationsService.findAll();
		mv.addObject("publicationsList", list);
//		List<Awards> list = zAwardsService.findAll();
//		mv.addObject("List", list);
//		for(Awards award:list){
//			System.out.println(award);
//		}
		mv.setViewName("zhiligongxian/zhuanzhujiaocai/zhuanzhujiaocai");
		return mv;
	}
	
	
	/**
	 * 专著教材添加
	 */
	@RequestMapping(value="/tianjia")
	public ModelAndView zhuanzhujiaocaitianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/zhuanzhujiaocai/tianjia");
		return model;
	}
	
	/**
	 * Excel导入
	 * @param request
	 * @return
	 * @throws Exception
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

        Publications publications = new Publications();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            publications.setAuthor((String)lo.get(1));
            publications.setDepartment((String)lo.get(2));
            publications.setYear((String)lo.get(3));
            publications.setPublications_name((String)lo.get(4));
            publications.setPress((String)lo.get(5));
            publications.setCategory((String)lo.get(6));
            publications.setCooperator((String)lo.get(7));
            publications.setNote((String)lo.get(8));
            String isbn = (String)lo.get(9);
            //因为excel读入的ISBN码，带两位小数，如：987654.00，所以分割字符串，仅使用小数点前的数
            String[] split = isbn.split("\\.");
            publications.setISBN(split[0]);
            zPublicationsService.add(publications);
            System.out.println("打印信息-->"+lo.toString());
        }


        return "zhiligongxian/zhuanzhujiaocai/tianjia";
    }
	
	@RequestMapping(value = "/download.do")
	public void downloadTest(HttpServletResponse response) throws IOException, InvalidFormatException {
        response.setContentType("application/vnd.ms-excel");//定义下载文件的类型
        response.setHeader("Content-disposition", "attachment;filename=Publications.xlsx");//文件名
        OutputStream outputStream = response.getOutputStream();//相应的输出流
        
        
        String file_path = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/Publications.xlsx";
        
//        File file = new File(path+"/zhiligongxian/jiaoxuehuojiang/Awards.xlsx");
        File file = new File(file_path);
        XSSFWorkbook wk = new XSSFWorkbook(file); 
        wk.write(outputStream);
        wk.close();
        outputStream.flush();
        outputStream.close();
        
        //return "zhiligongxian/jiaoxuehuojiang/jiaoxuehuojiangtianjia";
	}
	
}