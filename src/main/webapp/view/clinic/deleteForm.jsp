<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/board/deleteForm.jsp --%>    
<!DOCTYPE html><html><head><meta charset="EUC-KR"><title>병원 삭제</title>
<link rel="stylesheet" 	href="<%=request.getContextPath()%>/css/main.css">
</head><body>
<form action="delete" name="f" method="post">
<input type="hidden" name="c_num"  value="${c_num}">
<table>
  <tr><td>비밀번호</td>
      <td><input type="password" name="pass"></td></tr>
  <tr><td colspan="2">
     <input type="submit" value="삭제"></td></tr>
</table></form></body></html>