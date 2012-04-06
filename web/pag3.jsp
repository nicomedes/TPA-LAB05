<%-- 
    Document   : pag3
    Created on : 04/04/2012, 20:32:33
    Author     : 30980364
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto adicionado!</title>
    </head>
    <body>
       
        <%       
        // coletando os parâmetros da sessão
        HttpSession sessao = request.getSession();
        String fruit = (String) sessao.getAttribute("fruta");  
        ArrayList lista = (ArrayList) sessao.getAttribute("lista");
                    
        /*
        *  Se não existe lista na sessão (lista == null), é criada uma e incrementada com o
        *  item desejado.
        *  Se já houver uma lista ela é apenas incrementada. 
        */
        if (lista == null){
            lista = new ArrayList<String>();
            lista.add(fruit);
         }
         else{
            lista.add(fruit);
         }
        
        // A lista é incluída na sessão para a proxima página...        
        sessao.setAttribute("lista", lista);
        
        %>
        
        <!-- Confirmando adição -->
        Produto Adicionado!!</br>
        
        <a href="pag4.jsp">Ver Compras</a>&nbsp;&nbsp; 
        <a href="index.jsp">Comprar Mais</a>
    </body>
</html>
