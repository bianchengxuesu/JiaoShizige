package com.ischoolbar.programmer.controller.admin;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.UserService;
import com.ischoolbar.programmer.util.CpachaUtil;

/**
 * 系统操作类控制器
 * @author 13212
 *
 */
@Controller
@RequestMapping("/system")
public class SystemController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView login(ModelAndView model) {
		model.setViewName("system/login");
		
		return model;
	}
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model) {
		model.setViewName("system/index");
		model.addObject("name", "王宇");
		return model;
	}
	@RequestMapping(value="/news",method=RequestMethod.GET)
	public ModelAndView news(ModelAndView model) {
		model.setViewName("system/news");
		return model;
	}
	
	
	
	/**
	 * 登录表单提交处理控制器
	 * @param user
	 * @param cpahca
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> loginAct(User user,String cpacha,HttpServletRequest request,HttpSession session){
		Map<String,String> ret =new HashMap<String, String>();
		if(user == null) {
			ret.put("type", "error");
			ret.put("msg", "请填写用户信息！");
			return ret;
		}
		if(org.apache.commons.lang.StringUtils.isEmpty(user.getUsername())) {
			ret.put("type", "error");
			ret.put("msg", "请填写用户名！");
			return ret;
		}
		if(org.apache.commons.lang.StringUtils.isEmpty(cpacha)) {
			ret.put("type", "error");
			ret.put("msg", "请填写验证码！");
			return ret;
		}
		if(org.apache.commons.lang.StringUtils.isEmpty(user.getPassword())) {
			ret.put("type", "error");
			ret.put("msg", "请填写密码！");
			return ret;
		}
		Object loginCpacha = request.getSession().getAttribute("loginCpacha");
		if(loginCpacha ==null) {
			ret.put("type", "error");
			ret.put("msg", "会话超时，请刷新页面！");
			return ret;

		}
		//开了个后门，验证码写root就能过，最后删了外层if语句就行。
		if(!cpacha.toString().equals("root")){
			if(!cpacha.toUpperCase().equals(loginCpacha.toString().toUpperCase())) {
				ret.put("type", "error");
				ret.put("msg", "验证码错误！");
				return ret;
			}
		}
		User findByUsername = userService.findUserByUsername(user.getUsername());
		
		if(findByUsername == null) {
			ret.put("type", "error");
			ret.put("msg", "该用户名不存在！");
			return ret;
		}
		if(!user.getPassword().equals(findByUsername.getPassword())) {
			ret.put("type", "error");
			ret.put("msg", "密码错误！");
			return ret;
		}
		request.getSession().setAttribute("admin",findByUsername);
		ret.put("type", "success");
		ret.put("msg", "登陆成功！");
		session.setAttribute("userrole", findByUsername.getUserrole());
		System.out.println(findByUsername.getUserrole());
		return ret;
	}
	
	/**
	 * 系统所有验证码采用此方法
	 * @param vcodeLen
	 * @param width
	 * @param height
	 * @param cpachaType：用来区别验证码类型，传入字符串
	 * @param requset
	 * @param response
	 */
	@RequestMapping(value = "/get_cpacha",method=RequestMethod.GET)
	public void generateCpacha(
			@RequestParam(name="vl",required = false,defaultValue="4") Integer vcodeLen,
			@RequestParam(name="w",required = false,defaultValue="100") Integer width,
			@RequestParam(name="h",required = false,defaultValue="30") Integer height,
			@RequestParam(name="type",required = true,defaultValue="loginCpacha") String cpachaType,
			HttpServletRequest requset,
			HttpServletResponse response) {
		CpachaUtil cpachaUtil=new CpachaUtil(vcodeLen, width, height);
		String generatorVCode = cpachaUtil.generatorVCode();
		requset.getSession().setAttribute(cpachaType, generatorVCode);
		BufferedImage generatorRotateVCodeImage = cpachaUtil.generatorRotateVCodeImage(generatorVCode, true);
		try {
			ImageIO.write(generatorRotateVCodeImage, "gif", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
