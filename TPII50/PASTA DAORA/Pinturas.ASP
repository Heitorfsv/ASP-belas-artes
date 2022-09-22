<!--#include file="conexao.ASP"-->

<%SQL = "Select * from Obra where CodObra=" & request.querystring("CodObra") & ""%>
<%Set tabela = Banco.Execute(SQL)%>

	<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
		<center>
			<%if not tabela.EOF then%>
			<td>
			<center>
			<img src="/TPII50/PASTA DAORA/imagens/obras/<%Response.Write tabela("Foto")%>_p.jpg"> <br>								
			<%Response.Write tabela("Obra")%> <br>
			<%Response.Write tabela("ObraDescricao")%> <br>
			<%Response.Write request.querystring ("Pintor")%> <br>
			$<%Response.Write tabela("Preco")%> <br>
			<img src="/TPII50/PASTA DAORA/imagens/comprar.gif">
			<%tabela.movenext%>
			</center>
			</td>
			<%End If%>
		</center>
		</tr>
	</table>
