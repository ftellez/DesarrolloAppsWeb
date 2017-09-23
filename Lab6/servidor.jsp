<!DOCTYPE html>
<html>
	<head>
		<title> Servidor de prueba </title>
	</head>
	<body>
		<%
			String nombre = request.getParameter("nombre");
		%>
		
		<table>
			<thead>
				<tr>
					<th align="center" style="font-style:bold"> Variable </th>
					<th align="center" style="font-style:bold"> Valor </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td> nombre </td>
					<td> <%= nombre %> </td>
				</tr>
			</tbody>
		</table>
	</body>
</html>