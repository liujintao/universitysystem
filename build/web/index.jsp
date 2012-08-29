<%@page language="java" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8"%>


<html>
    <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <body>
        <form name="login" action="login.do">
            姓名：<input type="text" name="name" value="" />
            密码：<input type="password" name="password" value="" />
            <input type="submit" value="提交" name="submit" /> <input type="reset" value="重置" name="reset" />
        </form>
    </body>
</html>