<!--#include file="conexao.ASP"-->

<%SQL = "Select * from Pintor where CodPintor=" & request.querystring("CodPintor") & ""%>
<%Set tabela = Banco.Execute(SQL)%>

<table width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<center>
			<font color="red" size="5" face="Times New Roman"> <center> <%response.write Request.QueryString("Pintor")%> </center> </font>
		</center>
	</tr>
	
		<%SQL = "Select * from Obra where CodPintor=" & request.querystring("CodPintor") & ""%>
		<%Set tabela = Banco.Execute(SQL)%>

		<%do while not tabela.EOF%>
			<tr>
				<td>
				<center>
				<a href= "LAYOUT.ASP?Cobre=Pintura&Pintor=<%response.write Request.QueryString("Pintor")%>&CodObra=<%response.write tabela("CodObra")%>"> <%response.write tabela("Foto")%> </a>
				<%tabela.movenext%>
				</center>
				</td>
			</tr>

		<%loop%>
	
</table>

  