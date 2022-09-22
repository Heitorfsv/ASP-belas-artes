<% Cobre = Request.QueryString("Cobre") %>
    <% If Cobre = " " Then%>
        <!--#Include File ="Vitrine1.ASP"-->
    <%End If%>

    <% If Cobre = "Obras" Then %>
        <!--#Include File ="Obras.ASP"-->
    <%End If%>

    <% If Cobre = "Promocoes" Then %>
        <!--#Include File ="Promocoes.ASP"-->
    <%End If%>

    <% If Cobre = "Pintores" Then %>
        <!--#Include File ="Pintores.ASP"-->
    <%End If%>

    <% If Cobre="ObrasPintor" Then %>
        <!--#Include File ="ObrasPintores.ASP"-->
<%end if%>

    <% If Cobre="Pintura" Then %>
        <!--#Include File ="Pinturas.ASP"-->
<%end if%>

    <% If Cobre="Contato" Then %>
        <!--#Include File ="contato.ASP"-->
<%end if%>

    <% If Cobre="Procura" Then %>
        <!--#Include File ="consulta.ASP"-->
<%end if%>

    <% If request.querystring ("ref") = procura_action Then %>
        <!--#Include File ="resprocura.ASP"-->
<%end if%>