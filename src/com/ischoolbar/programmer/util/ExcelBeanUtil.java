package com.ischoolbar.programmer.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;



/**
 * ����excel bean���ݹ�����
 * @author 13212
 *
 */
public class ExcelBeanUtil {

	/**
	 * �������б� ����list-map �ȴ�����excel��workbook���д���
	 * @param 13212
	 * @return
	 */
	public static List<Map<Integer, Object>> manageJiaoxueList(final List<Jiaoxuegongxian> jiaoxuegongxians){
		List<Map<Integer, Object>> dataList=new ArrayList<Map<Integer, Object>>();
		if (jiaoxuegongxians!=null && jiaoxuegongxians.size()>0) {
			int length=jiaoxuegongxians.size();
			
			Map<Integer, Object> dataMap;
			Jiaoxuegongxian bean;
			for (int i = 0; i < length; i++) {
				bean=jiaoxuegongxians.get(i);
				
//				String[] headers=new String[]{"id���","����","��λ","����","�����","�ɹ�����","��ע��Ϣ"};
				dataMap=new HashMap<Integer, Object>();
				dataMap.put(0, bean.getId());
				dataMap.put(1, bean.getCourse() );
				dataMap.put(2, bean.getTeacher() );
				dataMap.put(3, bean.getJiaomi() );
				dataMap.put(4, bean.getConums() );
				dataMap.put(5, bean.getCoches() );
				dataMap.put(6, bean.getCocredits() );
				dataMap.put(7, bean.getCoobjects() );
				dataMap.put(8, bean.getCoobjects2() );
				dataMap.put(9, bean.getCoobjects3() );
				dataMap.put(10, bean.getCoches() );
				dataMap.put(11, bean.getEcochs() );
				dataMap.put(12, bean.getSyear() );
				dataMap.put(13, bean.getQuarter() );
				dataMap.put(14, bean.getCity() );
				dataMap.put(15, bean.getClassid() );
				dataMap.put(16, bean.getBeizhu() );
				dataMap.put(17, bean.getChecked() );
				dataList.add(dataMap);
			}
		}
		return dataList;
	}
	
	
	
	
}












