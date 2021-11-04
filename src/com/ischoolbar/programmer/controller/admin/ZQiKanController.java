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
 * 期刊贡献后台控制器
 * @author 13212
 *
 */
@RequestMapping("/zhiligongxian/qikanwenzhang")
@Controller
public class ZQiKanController {
	
	@Autowired
	private ZQiKanService zqikanService;
	/**
	 * 教学贡献管理页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/qikanwenzhang")
	public ModelAndView jiaoxuegongxian() {
		// 将查询的结果集合显示到qikanwenzhang/qikanwenzhangtianjia
        ModelAndView m = new ModelAndView();
        m.clear();
        // 存储list
        System.out.println("期刊显示");
        List<Qikanwenzhang> list=zqikanService.findAll();
        m.addObject("List", list);
        for(Qikanwenzhang string:list) {
    		System.out.println(string);
    	}
		m.setViewName("zhiligongxian/qikanwenzhang/qikanwenzhang");
		return m;
	}
	
	/**
	 * 期刊文章添加操作
	 */
	@RequestMapping(value="/qikanwenzhangtianjia",method=RequestMethod.GET)
	public ModelAndView jiaoxuegongxiantianjia(ModelAndView model) {
		model.setViewName("zhiligongxian/qikanwenzhang/qikanwenzhangtianjia");
		return model;
	}
	
	/**
	 * 期刊文章获取所有(显示)
	 */
	@RequestMapping(value="/findAll")
	@ResponseBody
	public ModelAndView findAll(){
		// 将查询的结果集合显示到qikanwenzhang/qikanwenzhangtianjia
        ModelAndView m = new ModelAndView();
        m.clear();
        // 存储list
        System.out.println("期刊显示");
        List<Qikanwenzhang> list=zqikanService.findAll();
        m.addObject("List", list);
        for(Qikanwenzhang string:list) {
    		System.out.println(string);
    	}
		m.setViewName("jiaoxuegongxian/jiaoxuegongxian");
		return m;
	}
	/**
	 * 添加期刊文章（上传文件和图片）
	 * @param file
	 * @param request
	 * @param model
	 * @param qikanwenzhang
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("add.do")
	public String add(@RequestParam(value="file") MultipartFile file,HttpServletRequest request,Qikanwenzhang qikanwenzhang) throws  IOException {
		String path = request.getSession().getServletContext().getRealPath("upload");//获取路径
        String fileName = file.getOriginalFilename();//获取文件名
        File dir = new File(path,fileName);//在本地创建文件夹
        if(!dir.exists()){ //判断本地是否已经存在
            dir.mkdirs();  //没有则创建
        }
        //MultipartFile自带的解析方法
        file.transferTo(dir);
        qikanwenzhang.setDename(fileName);//设置文件名
        String filepath = "/"+fileName;//设置路径
        qikanwenzhang.setPath(filepath);
		zqikanService.add(qikanwenzhang);
		
		return "redirect:/zhiligongxian/qikanwenzhang/qikanwenzhang";
		
	}
	/**
     * 
    * @Description: 文件下载
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
        files = zqikanService.queryById(id);//根据ID查询文件信息
        String suffixstr = files.getDename().substring(files.getDename().lastIndexOf("."));//获取文件后缀
    	//模拟文件，myfile.txt为需要下载的文件
        String fileName = request.getSession().getServletContext().getRealPath("upload")+files.getPath();
        //获取输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
        //假如以中文名下载的话
        String filename = "下载文件"+suffixstr;
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename,"UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);  
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型  
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
