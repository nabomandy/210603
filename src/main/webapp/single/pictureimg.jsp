<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- /WebContent/chap08_member/pictureimg.jsp
   1. ���� ���ε��ϱ�
           ���ε� ��ġ��  chap08_member/img/ �� ���� 
   2. ������ ������ opener�� ����ϱ�. ���� ������� close ��        
--%>
<script>
img = opener.document.getElementById("pic");
img.src = "<%=request.getContextPath()%>/img/${filename}"; //���ε�� �̹��� ȸ������ ȭ�鿡 ���
	opener.document.f.picture.value = "${filename}"; //�Ķ���Ϳ� �����̸� ����
	self.close();
</script>