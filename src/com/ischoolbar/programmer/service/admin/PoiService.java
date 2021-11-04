package com.ischoolbar.programmer.service.admin;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ischoolbar.programmer.entity.admin.Author;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.entity.admin.Lunwen;
import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.entity.admin.Teacher;
import com.ischoolbar.programmer.entity.admin.Total;
import com.ischoolbar.programmer.enums.WorkBookVersion;
import com.ischoolbar.programmer.util.ExcelUtil;

@Service
public class PoiService {

	private static final Logger log=LoggerFactory.getLogger(PoiService.class);
	
	/**
	 * 读取excel数据
	 * @param wb
	 * @return
	 * @throws Exception
	 */
	public List<Total> readExcelData(Workbook wb) throws Exception{
		Total total=null;
		
		List<Total> totals=new ArrayList<Total>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						total=new Total();

						String postdate=ExcelUtil.manageCell(row.getCell(1), null);
						String name=ExcelUtil.manageCell(row.getCell(2), null);
						String major=ExcelUtil.manageCell(row.getCell(3), null);
						String dename=ExcelUtil.manageCell(row.getCell(4), null);
						String dename1=ExcelUtil.manageCell(row.getCell(5), null);
						String dechar=ExcelUtil.manageCell(row.getCell(6), null);
						String languages=ExcelUtil.manageCell(row.getCell(7), null);
						String denames1=ExcelUtil.manageCell(row.getCell(9), null);
						String issn=ExcelUtil.manageCell(row.getCell(10), null);
						String aname=ExcelUtil.manageCell(row.getCell(13), null);
						
						
						total.setPostdate(postdate);
						total.setName(name);
						total.setMajor(major);
						total.setDename(dename);
						total.setDename1(dename1);
						total.setDechar(dechar);
						total.setLanguages(languages);
						total.setDenames1(denames1);
						total.setIssn(issn);
						total.setAname(aname);
						
						
						
						totals.add(total);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",totals);
		return totals;
	}
	/**
	 * 教师
	 * @param wb
	 * @return
	 * @throws Exception
	 */
	
	public List<Teacher> readExcelData1(Workbook wb) throws Exception{
		Teacher teacher=null;
		
		List<Teacher> teachers=new ArrayList<Teacher>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						teacher=new Teacher();

						String name=ExcelUtil.manageCell(row.getCell(2), null);
						
						
						teacher.setChinesename(name);
						
						
						
						teachers.add(teacher);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",teachers);
		return teachers;
	}
	/**
	 * 作者
	 * @param wb
	 * @return
	 * @throws Exception
	 */
	public List<Author> readExcelData2(Workbook wb) throws Exception{
		Author author=null;
		
		List<Author> authors=new ArrayList<Author>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						author=new Author();

						String aname=ExcelUtil.manageCell(row.getCell(13), null);
						
						
						author.setAname(aname);
						
						
						
						authors.add(author);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",authors);
		return authors;
	}
	/**
	 * 部门
	 * @param wb
	 * @return
	 * @throws Exception
	 */
	
	public List<Department> readExcelData3(Workbook wb) throws Exception{
		Department department=null;
		
		List<Department> departments=new ArrayList<Department>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						department=new Department();

						String major=ExcelUtil.manageCell(row.getCell(3), null);
						
						
						department.setMajor(major);
						
						
						
						departments.add(department);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",departments);
		return departments;
	}
	
	/**
	 * 论文
	 * @param wb
	 * @return
	 * @throws Exception
	 */
	
	public List<Lunwen> readExcelData4(Workbook wb) throws Exception{
		Lunwen lunwen=null;
		
		List<Lunwen> lunwens=new ArrayList<Lunwen>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						lunwen=new Lunwen();

						String postdate=ExcelUtil.manageCell(row.getCell(1), null);
						String dename=ExcelUtil.manageCell(row.getCell(4), null);
						
						lunwen.setPostdate(postdate);
						lunwen.setDename(dename);
						
						
						
						lunwens.add(lunwen);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",lunwens);
		return lunwens;
	}
	
	/**
	 * 期刊
	 * @return
	 * @throws Exception
	 */
	
	public List<Qikanwenzhang> readExcelData5(Workbook wb) throws Exception{
		Qikanwenzhang qikanwenzhang=null;
		
		List<Qikanwenzhang> qikanwenzhangs=new ArrayList<Qikanwenzhang>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						//TODO：跳过excel sheet表格头部
						row=sheet.getRow(j);
						qikanwenzhang=new Qikanwenzhang();

						String dename1=ExcelUtil.manageCell(row.getCell(5), null);
						String dechar=ExcelUtil.manageCell(row.getCell(6), null);
						String languages=ExcelUtil.manageCell(row.getCell(7), null);
						String denames1=ExcelUtil.manageCell(row.getCell(9), null);
						String issn=ExcelUtil.manageCell(row.getCell(10), null);
						
						qikanwenzhang.setDename(dename1);
						qikanwenzhang.setDechar(dechar);
						qikanwenzhang.setLanguages(languages);
						qikanwenzhang.setDenames(denames1);
						qikanwenzhang.setIssn(issn);
						
						
						
						
						
						qikanwenzhangs.add(qikanwenzhang);
					}
				}
			}
		}
		log.info("获取数据列表: {} ",qikanwenzhangs);
		return qikanwenzhangs;
	}
	
	
	/**
	 * 根据版本来区分获取workbook实例
	 * @param version
	 * @return
	 */
	public Workbook getWorkbook(String version,InputStream inputStream) throws Exception{
		Workbook wk=null;
		if (Objects.equals(WorkBookVersion.WorkBook2003.getCode(), version)) {
			wk=new HSSFWorkbook(inputStream);
		}else if (Objects.equals(WorkBookVersion.WorkBook2007.getCode(), version)) {
			wk=new XSSFWorkbook(inputStream);
		}
		
		return wk;
	}
	
	/**
	 * 根据file区分获取workbook实例
	 * @param version
	 * @return
	 */
	public Workbook getWorkbook(MultipartFile file,String suffix) throws Exception{
		Workbook wk=null;
		if (Objects.equals(WorkBookVersion.WorkBook2003Xls.getCode(), suffix)) {
			wk=new HSSFWorkbook(file.getInputStream());
		}else if (Objects.equals(WorkBookVersion.WorkBook2007Xlsx.getCode(), suffix)) {
			wk=new XSSFWorkbook(file.getInputStream());
		}
		
		return wk;
	}
}
