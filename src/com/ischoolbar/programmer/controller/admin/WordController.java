package com.ischoolbar.programmer.controller.admin;

import fr.opensagres.xdocreport.core.XDocReportException;
import fr.opensagres.xdocreport.document.IXDocReport;
import fr.opensagres.xdocreport.document.registry.XDocReportRegistry;
import fr.opensagres.xdocreport.template.IContext;
import fr.opensagres.xdocreport.template.TemplateEngineKind;
import fr.opensagres.xdocreport.template.formatter.FieldsMetadata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Word;
import com.ischoolbar.programmer.service.admin.TeacherService;
import com.ischoolbar.programmer.service.admin.ZAwardsService;
import com.ischoolbar.programmer.service.admin.ZPatentService;
import com.ischoolbar.programmer.service.admin.ZProjectService;
import com.ischoolbar.programmer.service.admin.ZPublicationsService;
import com.ischoolbar.programmer.service.admin.ZSocialService;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/word")
public class WordController {

	@Autowired
	private ZAwardsService zAwardsService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private ZSocialService zSocialService;
	@Autowired
	private ZPatentService zPatentService;
	@Autowired
	private ZProjectService zProjectService;
	@Autowired
	private ZPublicationsService publicationsService;
	
	
    public void generateWord() throws IOException, XDocReportException {

		//获取Word模板，模板存放路径在项目的resources目录下
    	InputStream ins = this.getClass().getResourceAsStream("/模板.docx");

    	//注册xdocreport实例并加载FreeMarker模板引擎
    	IXDocReport report = XDocReportRegistry.getRegistry().loadReport(ins,
                TemplateEngineKind.Freemarker);
        //创建xdocreport上下文对象
        IContext context = report.createContext();

        List<Word> list = new ArrayList<Word>();
        Word word1 = new Word();
        word1.setName("测试者1");
        word1.setFirstDate("2021/10/30");
        word1.setDegreeYear("2003");
        word1.setPartTeach("123.4");
        word1.setSupTeach("123");
        word1.setProResp("UT,RT");
        //teacher1.setSA("1234");
//        teacher1.setPA("100");
//        teacher1.setSP("800");
//        teacher1.setIP("200");
//        teacher1.setO("200");
        word1.setDescription("This is a test");

        Word word2 = new Word();
        word2.setName("测试者2");
        word2.setFirstDate("2021/10/10");
        word2.setDegreeYear("2005");
        word2.setPartTeach("1243.4");
        word2.setSupTeach("1233");
        word2.setProResp("UT");

        word2.setDescription("This is a test2");

        list.add(word1);
        list.add(word2);
        context.put("t",list);
        //创建字段元数据
        FieldsMetadata fm = report.createFieldsMetadata();
        //Word模板中的表格数据对应的集合类型
        fm.load("t", Word.class,true);
        //fm.load("goods", Goods.class, true);

        //输出到本地目录
        FileOutputStream out = new FileOutputStream(new File("D://测试.docx"));
        report.process(context, out);
    }



}
