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




import com.ischoolbar.programmer.entity.admin.Patent;
import com.ischoolbar.programmer.service.admin.ZPatentService;
import com.ischoolbar.programmer.util.ImportExcelUtil;



/**
 * ר�������̨������
 * @author twl
 *
 */
@RequestMapping("/zhiligongxian/zhuanli")
@Controller
public class ZPatentController {
	

	@Autowired
	private ZPatentService zPatentService;
	
	/**
	 * ר������ҳ��
	 * @return 
	 */
	@RequestMapping(value="/zhuanli")
	public ModelAndView jiaoxuehuojiang() {
		ModelAndView mv = new ModelAndView();
		mv.clear();
		//���浽list
		System.out.println("����Ϣ");
		List<Patent> list = zPatentService.findAll();
		mv.addObject("patentList", list);
//		List<Awards> list = zAwardsService.findAll();
//		mv.addObject("List", list);
//		for(Awards award:list){
//			System.out.println(award);
//		}
		mv.setViewName("zhiligongxian/zhuanli/zhuanli");
		return mv;
	}
	
	
	/**
	 * ר�����
	 */
	@RequestMapping(value="/tianjia")
	public ModelAndView zhuanlitianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/zhuanli/tianjia");
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
        //��excel���ݲ������ݿ�
        Patent patent = new Patent();
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
            
            patent.setPatent_name((String)lo.get(1));
            patent.setHolder((String)lo.get(3));
            patent.setApply_number((String)lo.get(4));
            patent.setData((String)lo.get(6));
            patent.setComment((String)lo.get(7));
            zPatentService.add(patent);
            System.out.println("��ӡ��Ϣ-->"+lo.toString());
        }


        return "zhiligongxian/zhuanli/tianjia";
    }
	
	@RequestMapping(value = "/download.do")
	public void downloadTest(HttpServletResponse response) throws IOException, InvalidFormatException {
        response.setContentType("application/vnd.ms-excel");//���������ļ�������
        response.setHeader("Content-disposition", "attachment;filename=Patent.xlsx");//�ļ���
        OutputStream outputStream = response.getOutputStream();//��Ӧ�������
        
        String file_path = new File(ZAwardsController.class.getResource("/").getPath()).getParent() + "/download/Patent.xlsx";
        
        File file = new File(file_path);
        XSSFWorkbook wk = new XSSFWorkbook(file); 
        wk.write(outputStream);
        wk.close();
        outputStream.flush();
        outputStream.close();
        
     
	}
}
