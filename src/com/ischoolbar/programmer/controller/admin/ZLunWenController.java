package com.ischoolbar.programmer.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author 13212
 *智力贡献会议论文
 */
@RequestMapping("/zhiligongxian/huiyilunwen")
@Controller
public class ZLunWenController {

	@RequestMapping(value="/huiyilunwen",method=RequestMethod.GET)
	public ModelAndView huiyilunwen(ModelAndView model) {
		model.setViewName("zhiligongxian/huiyilunwen/huiyilunwen");
		return model;
	}
}
