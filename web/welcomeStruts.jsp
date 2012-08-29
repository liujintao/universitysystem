<%@page language="java" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<html:html locale="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
    </head>
    <body style="background-color: white">
         <%

      String name=request.getParameter("name");
           String password=request.getParameter("password");
         session.setAttribute("name",name);
           session.setAttribute("password",password);

           %>
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        
        <h3><bean:message key="welcome.heading"/></h3>
        <p><bean:message key="welcome.message"/></p>
       
        <%=request.getParameter("name")%>
        <%=request.getParameter("password")%>
        
    </body>
</html:html>
