
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload</title>
        <style>
            tr{
                
                width: 700px;
                height: 50px;
                background-color:#ffba00;
                color:white;
                text-align:center;
                
            }
            h1{
            color:white;
            }
            body{
            background-color:#36454f;
            background-repeat: no-repeat;
            background-size:cover;
            
            display:center;
            }
            button {
    padding: 10px 20px;
    background-color:#3e8ede*;
    color: ;
    border: none;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
}

button:hover {
    background-color:;
}


            
            
            
        </style>
        
    </head>
    <body>
        
        
    <center>
    <div>
        <h1 >UPLOAD YOUR PROJECT</h1>
        
        </div>
        
        
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <table width="600px" height="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                <tr>
                    <td><h2>Car Name </h2></td>
                    <td>
                        <input type="text" required="" name="firstname">
                    </td>
                </tr>
                <tr>
                    <td><h2>Discription</h2></td>
                    <td>
                        <h2><input type="text" required=""name="lastname"></h2>
                    </td>
                </tr>
                <tr>
                    <td><h2>front</h2> </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td><h2>back</h2> </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td><h2>left</h2> </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td><h2>right</h2> </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td><h2>in</h2> </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
            
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
            </table>

        </form>
        <br>
        <a href="index.jsp"><button>MOVE TO HOME PAGE</button></a>
    </center>
</body>
</html>