<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp"></jsp:include></div>
	<div>
		<form action="cookieinfo.jsp">
			<input type="hidden" name="id"
				value="<%=request.getParameter("id")%>" />
			<div>
				<label>����</label>
				<div>
					<input type="text" name="name" placeholder="����" />
				</div>
			</div>
			<div>
				<label>�����</label> <input type="text" name="deliverdate"
					placeholder="yyyy/mm/dd" />
			</div>

			<div>
				<label>������</label> <input type="text" name="country"
					placeholder="������" />
			</div>

			<div>
				<label>�����ȣ</label> <input type="text" name="addressnum"
					placeholder="�����ȣ" />
			</div>
			<div>
				<label>�ּ�</label> <input type="text" name="addressname"
					placeholder="�ּ�" />
			</div>
			<div>
				<div>
					<a href="jangbaguni.jsp?id=<%=request.getParameter("id")%>"></a> <input
						type="submit" value="���" /> <a href="ordercancel.jsp"> ���</a>


				</div>

			</div>
		</form>
	</div>
</body>
</html>