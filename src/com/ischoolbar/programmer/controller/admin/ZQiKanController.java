package com.ischoolbar.programmer.controller.admin;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.service.admin.ZQiKanService;

/**
 * �ڿ����׺�̨������
 * @author 13212
 *
 */
@RequestMapping("/zhiligongxian/qikanwenzhang")
@Controller
public class ZQiKanController {
	
	@Autowired
	private ZQiKanService zqikanService;
	/**
	 * ��ѧ���׹���ҳ��
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/qikanwenzhang")
	public ModelAndView jiaoxuegongxian() {
		// ����ѯ�Ľ��������ʾ��qikanwenzhang/qikanwenzhangtianjia
        ModelAndView m = new ModelAndView();
        m.clear();
        // �洢list
        System.out.println("�ڿ���ʾ");
        List<Qikanwenzhang> list=zqikanService.findAll();
        m.addObject("List", list);
        for(Qikanwenzhang string:list) {
    		System.out.println(string);
    	}
		m.setViewName("zhiligongxian/qikanwenzhang/qikanwenzhang");
		return m;
	}
	
	/**
	 * �ڿ�������Ӳ���
	 */
	@RequestMapping(value="/qikanwenzhangtianjia",method=RequestMethod.GET)
	public ModelAndView jiaoxuegongxiantianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/qikanwenzhang/qikanwenzhangtianjia");
		return model;
	}
	
	/**
	 * �ڿ����»�ȡ����(��ʾ)
	 */
	@RequestMapping(value="/findAll")
	@ResponseBody
	public ModelAndView findAll(){
		// ����ѯ�Ľ��������ʾ��qikanwenzhang/qikanwenzhangtianjia
        ModelAndView m = new ModelAndView();
        m.clear();
        // �洢list
        System.out.println("�ڿ���ʾ");
        List<Qikanwenzhang> list=zqikanService.findAll();
        m.addObject("List", list);
        for(Qikanwenzhang string:list) {
    		System.out.println(string);
    	}
		m.setViewName("jiaoxuegongxian/jiaoxuegongxian");
		return m;
	}
	/**
	 * ����ڿ����£��ϴ��ļ���ͼƬ��
	 * @param file
	 * @param request
	 * @param model
	 * @param qikanwenzhang
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("add.do")
	public String add(@RequestParam(value="file") MultipartFile file,HttpServletRequest request,Qikanwenzhang qikanwenzhang) throws  IOException {
		String path = request.getSession().getServletContext().getRealPath("upload");//��ȡ·��
        String fileName = file.getOriginalFilename();//��ȡ�ļ���
        File dir = new File(path,fileName);//�ڱ��ش����ļ���
        if(!dir.exists()){ //�жϱ����Ƿ��Ѿ�����
            dir.mkdirs();  //û���򴴽�
        }
        //MultipartFile�Դ��Ľ�������
        file.transferTo(dir);
        qikanwenzhang.setDename(fileName);//�����ļ���
        String filepath = "/"+fileName;//����·��
        qikanwenzhang.setPath(filepath);
		zqikanService.add(qikanwenzhang);
		
		return "redirect:/zhiligongxian/qikanwenzhang/qikanwenzhang";
		
	}
	/**
     * 
    * @Description: �ļ�����
    * @auth 13212
    * @param @param id
    * @param @param request
    * @param @param response
    * @param @throws Exception
    * @return void
     */
    @RequestMapping("/down/{id}")
    public void down(@PathVariable("id") Long id,HttpServletRequest request,HttpServletResponse response) throws Exception{
        Qikanwenzhang files = new Qikanwenzhang();
        files = zqikanService.queryById(id);//����ID��ѯ�ļ���Ϣ
        String suffixstr = files.getDename().substring(files.getDename().lastIndexOf("."));//��ȡ�ļ���׺
    	//ģ���ļ���myfile.txtΪ��Ҫ���ص��ļ�
        String fileName = request.getSession().getServletContext().getRealPath("upload")+files.getPath();
        //��ȡ������
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
        //���������������صĻ�
        String filename = "�����ļ�"+suffixstr;
        //ת�룬����ļ�����������
        filename = URLEncoder.encode(filename,"UTF-8");
        //�����ļ�����ͷ
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);  
        //1.�����ļ�ContentType���ͣ��������ã����Զ��ж������ļ�����  
        response.setContentType("multipart/form-data"); 
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
    }
	
	
	
}
