package com.ischoolbar.programmer.controller.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ischoolbar.programmer.dao.admin.GongXianDao;
import com.ischoolbar.programmer.entity.admin.Author;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;
import com.ischoolbar.programmer.entity.admin.Lunwen;
import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.entity.admin.Teacher;
import com.ischoolbar.programmer.enums.StatusCode;
import com.ischoolbar.programmer.enums.WorkBookVersion;
import com.ischoolbar.programmer.reponse.BaseResponse;
import com.ischoolbar.programmer.service.admin.PoiService;
import com.ischoolbar.programmer.service.admin.ProductService;
import com.ischoolbar.programmer.util.ExcelBeanUtil;
import com.ischoolbar.programmer.util.ExcelUtil;
import com.ischoolbar.programmer.util.WebUtil;



/**
 * ���뵼��controller
 * @author 13212
 *
 */
@Controller
public class PoiController {
	
	private static final Logger log=LoggerFactory.getLogger(PoiController.class);

	private static final String prefix="poi";
	
	@Autowired
	private GongXianDao gongxianMapper;
	
	@Autowired
	private PoiService poiService;
	
	@Autowired
	private ProductService productService;
	
	@Value("������Ϣ��")
	private String sheetJiaoxueName;
	
	@Value("������Ϣ�б�.xls")
	private String excelJiaoxueName;
	
	
	
	/**
	 * �ϴ�excel��������
	 * @param request
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value=prefix+"/excel/upload",method=RequestMethod.POST,consumes=MediaType.MULTIPART_FORM_DATA_VALUE)
	@ResponseBody
	public BaseResponse uploadExcel(MultipartHttpServletRequest request){
		BaseResponse response=new BaseResponse(StatusCode.Success);
		try {
			MultipartFile file=request.getFile("jiaoxueFile");
			if (file==null || file.getName()==null) {
				return new BaseResponse(StatusCode.Invalid_Param);
			}
			String fileName=file.getOriginalFilename();
			String suffix=StringUtils.substring(fileName, fileName.lastIndexOf(".")+1);
			if (WorkBookVersion.valueOfSuffix(suffix)==null) {
				return new BaseResponse(StatusCode.WorkBook_Version_Invalid);
			}
			log.info("�ļ�����{} �ļ���׺����{} ",fileName,suffix);
			
			Workbook wb=poiService.getWorkbook(file,suffix);
			
			
//			List<Total> totals=poiService.readExcelData(wb);
			/*List<Teacher> teachers=poiService.readExcelData1(wb);*/
			List<Teacher> teachers=poiService.readExcelData1(wb);
			List<Author> authors=poiService.readExcelData2(wb);
			List<Department> departments=poiService.readExcelData3(wb);
			List<Qikanwenzhang> qikanwenzhangs=poiService.readExcelData5(wb);
			List<Lunwen> lunwens=poiService.readExcelData4(wb);
			
			
			
			
			
			//��������-��һ�ַ���
			/*for(Teacher p:teachers){
				productService.saveProduct(p);
			}*/
			for(Teacher p:teachers){
				productService.saveProduct(p);
			}
			for(Author p:authors){
				productService.insertAuthor(p);
			}
			for(Department p:departments){
				productService.insertDepartment(p);
			}
			
			for(Qikanwenzhang p:qikanwenzhangs){
				productService.insertQikanwenzhang(p);
			}
			for(Lunwen p:lunwens){
				productService.insertLunwen(p);
			}
			
			
			
		} catch (Exception e) {
			log.error("�ϴ�excel�������� �����쳣��",e.fillInStackTrace());
			return new BaseResponse<>(StatusCode.System_Error);
		}
		return response;
	}
	
	
	
	/**
	 * ����excel
	 * @param response
	 * @return
	 */
	@RequestMapping(value=prefix+"/excel/export",method=RequestMethod.GET)
	public @ResponseBody String exportExcel(HttpServletResponse response,String search){
		try {
			List<Jiaoxuegongxian> jiaoxuegongxians=gongxianMapper.findAll();
			String[] headers=new String[]{"id���","�γ�","��ʦ","����","�γ̺�","��ʱ","ѧ��","�ڿζ���","��������","��������2","ʵ�ʿ�ʱ","ʵ���ʱ","ѧ��","���μ���","�Ͽγ���","�༶","�γ̱�ע","��˱��"};
			List<Map<Integer, Object>> dataList=ExcelBeanUtil.manageJiaoxueList(jiaoxuegongxians);
			log.info("excel����������ݣ� {} ",dataList);
			
			Workbook wb=new HSSFWorkbook();
			ExcelUtil.fillExcelSheetData(dataList, wb, headers, sheetJiaoxueName);
			WebUtil.downloadExcel(response, wb, excelJiaoxueName);
			return excelJiaoxueName;
		} catch (Exception e) {
			log.error("����excel �����쳣��",e.fillInStackTrace());
		}
		return null;
	}
	
	
	
	
}
