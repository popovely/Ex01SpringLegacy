package com.kosmo.springlegacy;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.MemberDTO;


/**
 * 사용자의 요청을 제일먼저 받는 DispatcherServlet은
 * 기본패키지로 지정된 com.kosmo.springlegacy를 스캔하여 컨트롤러 클래스를 찾아낸다.
 * 그리고 해당 요청명에 매핑된 메서드를 찾아 요청을 전달하고 로직을 수행한다.

@Controller
	: 해당 클래스를 컨트롤러로 사용하고 싶을때 클래스명 앞에 선언한다.
	  패키지를 스캔할때 해당 어노테이션이 있는 클래스를 찾아서 요청을 전달한다.
	  
@RequestMapping
	: 요청명을 매핑한다.
	  요청명은 서블릿과 마찬가지이고 컨택스트루트를 제외한 나머지 경로명으로 이루어진다.
	  요청명의 매핑정보로 메서드를 호출하므로 메서드명은 큰 의미가 없다.
	  개발자가 구분하기 좋은 정도의 이름으로 설정하면 된다.
 */
@Controller
public class FormController {
	
	/**
	[폼값받기1]
		파라미터로 전달된 값을 HttpServletRequest 내장객체를 통해 받는다.
		JSP나 Servlet에서 주로 사용하는 방식이다.
	 */
	@RequestMapping("/form/servletRequest")
	public String loginMember(HttpServletRequest req, Model model) {
		
		// requeset내장객체의 getParameter()를 사용한다.
		// ?id=kosmo&pw=1234
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		// View로 전달할 데이터를 Model객체에 저장한다.
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("message", "로그인 정보가 전달되었습니다.");
		
		/*
			View의 페이지 경로를 반환한다.
			아래처럼 String으로 반환하면 ViewResolver가 전체경로를 조립하여 웹브라우저에 출력한다.
		 */
		return "01Form/servletRequest";
	}
	
	/**
	[폼값받기3]
		커맨드 객체를 이용해서 폼값 한번에 받기
		
		조건1)
			쿼리스트링으로 전달되는 파라미터의 개수와
			폼값을 저장할 객체 (DTO 혹은 VO)의 멤버변수의 개수가 동일할 것을 권장한다.
		
		조건2)
			커맨드객체를 사용할때는 클래스명 앞글자를 소문자로 바꾼형태의 매개변수를 사용해야 한다.
			Ex)	MemberDTO	-> memberDTO
		
		조건3)
			커맨드객체를 만들때 파라미터의 개수는 달라도 상관없지만
			파라미터명과 멤버변수명은 동일해야하고,
			이에 해당하는 getter / setter가 반드시 생성되어야 한다.
	 */
	@RequestMapping("./form/commandObjGet.do")
	public String commandObjGet(MemberDTO memberDTO) {
		
		return "01Form/commandObjGet";
	}
}
