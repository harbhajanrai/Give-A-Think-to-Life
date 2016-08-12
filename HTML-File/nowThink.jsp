<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Give A Think</title>
        <link rel="stylesheet" href="newcss.css"/>
    </head>
    <body>
        <div id="hello">
            <h1>
                <%
                     String name=request.getParameter("name");
            out.println("Hello,"+name);
                    %>
            </h1>
        <p>See, and Give A think About Your Life</p>
        
        </div>
        <br>
        <br>
        <div id="container">
         <% 
            out.println("■ Show Weeks passed");
            out.println("□ Show Weeks to come");
            out.println("◧ Show On Going Week");
            String cage=request.getParameter("age");
            int age=Integer.parseInt(cage);
            String fage=request.getParameter("eage");
            int eage=Integer.parseInt(fage);
           
         %>
         <br>
         <%
                  
            

            double total_weeks=eage*52.143;
            int weeks_passed=(int)(age*52.143);

            int Square=(int)Math.ceil(Math.sqrt(total_weeks));
            


            

            int[][] multi = new int[Square][Square];
            int number=0;
            for(int i=0;i<Square;i++){          
                for(int j=0;j<Square;j++){
                    multi[i][j]=number;
                    number++;
                }
            }
            for(int i=0;i<Square;i++){
                for(int j=0;j<Square;j++){
                    //System.out.print(multi[i][j]);
                    if(multi[i][j]<weeks_passed){
                        out.print("■ ");
                    }
                    if(multi[i][j]==weeks_passed){
                        out.print("◧ ");

                    }
                    if(multi[i][j]>weeks_passed){
                        out.print("□ ");
                    }
                }
                %>
         <br>
         <%
        }
            
         %>
        </div>
    </body>
</html>
