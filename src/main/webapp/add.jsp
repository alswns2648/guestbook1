<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String time = sdf.format(date);
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	String reg_date = request.getParameter(time);
	
	GuestbookVo vo = new GuestbookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	vo.setReg_date(reg_date);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>