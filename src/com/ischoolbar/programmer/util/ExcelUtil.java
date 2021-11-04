package com.ischoolbar.programmer.util;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * excel������
 * @author 13212
 *
 */
public class ExcelUtil {
	
	private static final Logger log=LoggerFactory.getLogger(ExcelUtil.class);
	private static final String dateFormat="yyyy-MM-dd";

	private static final SimpleDateFormat simpleDateFormat=new SimpleDateFormat(dateFormat);
	
	/**
	 * excel sheet�������
	 * @param dataList
	 * @param wb
	 * @param headers
	 * @param sheetName
	 */
	public static void fillExcelSheetData(List<Map<Integer, Object>> dataList,Workbook wb,String[] headers,String sheetName){
		Sheet sheet=wb.createSheet(sheetName);
		
		//TODO������sheet�ĵ�һ������-��excel��ͷ����Ϣ
		Row headerRow=sheet.createRow(0);
		for(int i=0;i<headers.length;i++){
			
			headerRow.createCell(i).setCellValue(headers[i]);
		}
		
		//TODO���ӵڶ��п�ʼ���������������б�
		int rowIndex=1;
		Row row;
		Object obj;
		for(Map<Integer, Object> rowMap:dataList){
			try {
				row=sheet.createRow(rowIndex++);
				for(int i=0;i<headers.length;i++){
					obj=rowMap.get(i);
					
					if (obj==null) {
						row.createCell(i).setCellValue("");
					}else if (obj instanceof Date) {
						String tempDate=simpleDateFormat.format((Date)obj);
						row.createCell(i).setCellValue((tempDate==null)?"":tempDate);
					}else {
						row.createCell(i).setCellValue(String.valueOf(obj));
					}
				}
			} catch (Exception e) {
				log.debug("excel sheet������� �����쳣�� ",e.fillInStackTrace());
			}
		}
		
	}
	
	/**
	 * �����excel��ȡ���ĵ�Ԫ������
	 * @param cell
	 * @throws Exception
	 */
	public static String manageCell(Cell cell,String dateFormat) throws Exception{
		DecimalFormat decimalFormatZero = new DecimalFormat("0");
        SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");  //���ڸ�ʽ��
        DecimalFormat decimalFormatNumeric = new DecimalFormat("0.00");
		
		String value="";
		CellType cellType=cell.getCellTypeEnum();
  		if (CellType.STRING.equals(cellType)) {
			value=cell.getStringCellValue();
		}else if (CellType.NUMERIC.equals(cellType)) {
			if("General".equals(cell.getCellStyle().getDataFormatString())){
                value = decimalFormatZero.format(cell.getNumericCellValue());
            }else if("m/d/yy".equals(cell.getCellStyle().getDataFormatString())){
                value = sdf.format(cell.getDateCellValue());
            }else{
                value = decimalFormatNumeric.format(cell.getNumericCellValue());
            }
		}else if (CellType.BOOLEAN.equals(cellType)) {
			value=String.valueOf(cell.getBooleanCellValue());
		}else if (CellType.BLANK.equals(cellType)) {
			value="";
		}
		return value;
	}
}
