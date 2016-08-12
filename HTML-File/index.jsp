<%-- 
    Document   : index
    Created on : May 8, 2016, 3:46:23 PM
    Author     : HarbhajanRai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Give A Think</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <div id="header">
            <h1>Think!What, Are You Doing?</h1>
        </div>
        <br>
        <br>
        <div id="getinfo">
            <script>
                function formSubmit()
                {
                    document.forms["myForm"].submit();
                }
            </script>
            <script>

            

            function check()
            {
                var a, b,c;
                a = document.getElementByName("name").value;
                b = document.getElementByName("age").value;
                c=document.getElementsByName("eage").value;

                if(a== "")
                {
                    myFunction();
                }
                if(b== "")
                {
                    myFunction();
                }
                return true;
            }

            function myFunction() {
                alert("Hello! I am an alert box!");
            }

            </script>
            
            
            
            <form name="myForm" method="post" action="nowThink.jsp" onsubmit="return check()">
                <input type="text" name="name" placeholder="Name"><br><br>
                <input type="text" name="age" placeholder="Age"><br><br>
                <input type="text" name="eage" placeholder="Expected Life"><br><br>
                <input type="button" onclick="formSubmit()" value="Yeah! I am Ready">
            </form>
        </div>
        
    </body>
</html>
