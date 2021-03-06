package com.kosmo.springlegacy;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RequestMappingController {
	
	// get방식 혹은 post방식의 전송을 위한 인덱스 페이지 매핑
	@RequestMapping("/requestMapping/index.do")
	public String rmIndex() {
		
		return "02RequestMapping/index";
	}
	
	/*
		단순히 요청명만 매핑하는 경우에는 value, method를 생략할 수 있지만
		전송방식까지 명시해야하는 경우에는 속성을 제거하면 에러가 발생한다.
	 */
	@RequestMapping(value="/requestMapping/getSearch.do", method=RequestMethod.GET)
	public String getSearch(HttpServletRequest req, Model model) {
		/*
			요청 처리를 위한 메서드를 정의할때 해당 메서드에서 사용하고자 하는
			내장객체가 있다면 매개변수형태로 선언하면 즉시 사용할 수 있다.
			즉, 컨트롤러에 정의되는 메서드는 매개변수의 개수가 큰 의미를 가지지 않는다.
		 */
		System.out.println("RequestMethod.GET방식으로 폼값전송");
		
		// request내장객체로 폼값 받기
		String sColumn = req.getParameter("searchColumn");
		String sWord = req.getParameter("searchWord");
		// Model객체에 데이터 저장하기
		model.addAttribute("sCloumn", sColumn);
		model.addAttribute("sWord", sWord);
		// 뷰 호출하기
		return "02RequestMapping/getSearch";
	}
	
	
	
	@RequestMapping(method=RequestMethod.POST, value="/requestMapping/postLogin.do")
	public ModelAndView postLogin(
			@RequestParam("user_id") String id,
			@RequestParam("user_pw") String pw
			) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("02RequestMapping/postLogin");
		mv.addObject("id", id);
		mv.addObject("pw", pw);
		
		return mv;
	}
}
