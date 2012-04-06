<%-- 
    Document   : pag2
    Created on : 04/04/2012, 20:17:51
    Author     : 30980364
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmação de pedido</title>
    </head>
    <body>
        
        <%
        // Coletando parâmetros da sessão 
        String fruit = request.getParameter("fruta");
        
        //coletando a sessão e setando atributos para a proxima página.
        HttpSession sessao = request.getSession();   
        sessao.setAttribute("fruta", fruit);
      
     
        %>
        
        <!-- Mostrando o item digitado -->
        Você pediu pediu: <%=fruit%></br>
        
        <a href="index.jsp">Cancelar</a>&nbsp;&nbsp; 
        <a href="pag3.jsp">Continuar</a>
        
    </body>
</html>
