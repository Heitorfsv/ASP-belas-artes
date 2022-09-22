<%procura= request.form("txtprocurar") %>
<%SLQ = "select Pintor.PintorNome, Obra.* from Pintor inner join Obra ON Pintor.CodPintor = Obra.CodPintor where Pintor.PintorNome like '%"& Procura &"%' or Obra.Obra like '%"& Procura&"%' or Obra.ObraDescricao like '%"& Procura&"%' "%>
<%set pesquisa = banco.execute(SQL)%>

<%if tabela not EOF%>
<%%>


<%END IF%>