<!--#include file="conexao.ASP"-->

<%SQL = "Select * from Pintor where CodPintor" %>
<%Set tabela = Banco.Execute(SQL)%>

	<body bgcolor="FFCC99" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="100%" border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td> 
			<center>
			<font color="red" size="5" face="Times New Roman"> <center> Pintores </center> </font>

			<br>

			<%If not tabela.EOF Then%> 
				<%do while not tabela.EOF%> 
				
				<a href="Layout.ASP?Cobre=ObrasPintor&CodPintor=<%response.write tabela("CodPintor")%>&Pintor=<%response.write tabela("PintorNome")%>"> <%Response.Write tabela("PintorNome")%> </a> 
				<br>
				<%tabela.movenext%>
				<br>
				<%loop%>
			<%end if%>

		</td>
	</tr>

	