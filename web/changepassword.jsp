<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Đổi mật khẩu</title>
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%
            String error = "";
            if (request.getAttribute("error") != null) {
                    error = (String) request.getAttribute("error");
            }
            String messager ="";
            if (request.getAttribute("messager") != null) {
                messager = (String) request.getAttribute("messager");
            }          
            String username = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("username")) 
                        username = cookie.getValue();
                }
            }
	%>
        <div id="login" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 center-block">
                        <form action="ChangePassword" method="post" class="billing-details">
                            <h3 class="section-title">KHÔI PHỤC MẬT KHẨU</h3>
                            <% if(error != "") { %>
                                <div class="alert alert-danger"><%=error%></div>
                            <% } %>
                            <% if(messager != "") { %>
                                <div class="alert alert-info"><%=messager%></div>
                            <% } %>
                            <input type="hidden" name="username" value="<%=username%>" /> 
                            <div class="form-group">                             
                                <input type="password" name="password" placeholder="Mật khẩu cũ" class="input" />
                            </div>
                            <div class="form-group">                             
                                <input type="password" name="newpassword" placeholder="Mật khẩu mới" class="input" />
                            </div>
                            <div class="form-group">                             
                                <input type="password" name="renewpassword" placeholder="Nhập lại mật khẩu mới" class="input" />
                            </div>
                            <button type="submit" value="newpassword" class="primary-btn order-submit">THAY ĐỔI</button>
                        </form>                       
                    </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>