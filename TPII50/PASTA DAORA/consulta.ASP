<!--#include file="conexao.ASP"-->

<%SQL = "Select * from Pintor where CodPintor" %>
<%Set tabela = Banco.Execute(SQL)%>

<body bgcolor="FFCC99" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
		<form name="" method="post" action="layout.asp?ref=procura_action" onSubmit="return validar(this)">>
    	<tr> 
    		<td>
        			<div align="right"><font face="Verdana" size="2" color="#FF0000">Procurar no site por:</font></div>
     		</td>
  		<td> 
        			<input type="text" name="procura">
      		</td>
   	</tr>

   	<tr> 

      		<td colspan="2"> 
     			  <div align="center">
          				<input type="submit" value="Enviar">
        			</div>
      		</td>
    	</tr>
		</form>
	</table>
</body>
