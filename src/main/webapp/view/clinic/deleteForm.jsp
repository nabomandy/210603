<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/board/deleteForm.jsp --%>    
<!DOCTYPE html><html><head><meta charset="EUC-KR"><title>���� ����</title>
<link rel="stylesheet" 	href="<%=request.getContextPath()%>/css/main.css">
</head><body>
<form action="delete" name="f" method="post">
<input type="hidden" name="c_num"  value="${c_num}">
<table>
  <tr><td>��й�ȣ</td>
      <td><input type="password" name="pass"></td></tr>
  <tr><td colspan="2">
     <input type="submit" value="����"></td></tr>
</table></form></body></html>