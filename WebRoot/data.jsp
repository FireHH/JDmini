<%@ page language="java" import="java.util.*,com.xiaohuo.utils.*"  pageEncoding="utf-8"%>
<%
     request.setCharacterEncoding("utf-8");
     String info=request.getParameter("info");
     String answer=ChatUtil.getResult(info);
     out.println(answer);
%>
