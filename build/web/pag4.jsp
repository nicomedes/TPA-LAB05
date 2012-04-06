<%-- 
    Document   : pag4
    Created on : 04/04/2012, 20:42:11
    Author     : 30980364
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Compras</title>
    </head>
    <body>
        
        
        <%  
        //Coleta de parâmetros da sessão.
        HttpSession sessao = request.getSession();
        ArrayList lista = (ArrayList) sessao.getAttribute("lista");
        //String para receber os itens e exibi-los.
        String fruta;
        %>
      
        
        Lista de Compras:</br>
        
        <%
        //Lê a lista com um iterator e exibe todo o seu coneúdo na tela.
        Iterator<String> itr = lista.iterator();
        while (itr.hasNext()){
           fruta =  itr.next();
          out.print(fruta + "<br>");
        }
        
        %>
        
        <a href="index.jsp">Comprar Mais</a>
 
    </body>
</html>
