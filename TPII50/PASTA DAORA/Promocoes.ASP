<!--#include file="conexao.ASP"-->

<%SQL = "Select * from Obra where Flag_Promocao = True" %>
<%Set tabela = Banco.Execute(SQL)%>

        <table width="100%" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="2"> <font color="red" size="5" face="Times New Roman"> <center> PROMOÇÕES </center> </font> </td>
            </tr>
            <%If not tabela.EOF Then%> 
                <%do while not tabela.EOF%>
                    <tr>
                        <td> 
                            <center>
                                <img src="/TPII50/PASTA DAORA/imagens/obras/<%Response.Write tabela("Foto")%>_p.jpg"> <br>
                                    <%Response.Write tabela("Obra")%>
                                <%tabela.movenext%>
                            </center>
                        </td>
    
                        <td>	
                            <center>
                                <%if not tabela.EOF then%>
                                    <img src="/TPII50/PASTA DAORA/imagens/obras/<%Response.Write tabela("Foto")%>_p.jpg"> <br>								<%Response.Write tabela("Obra")%>
                                    <%tabela.movenext%>
                                <%End If%>
                            </center>
                        </td>
                    </tr>
                <%Loop%>
            <%End If%>
            </center>
        </table>
