<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>

    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->

    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <!-- /google fonts-->

  <script type="text/javascript">
      window.history.forward();
      function noBack() { window.history.forward(); }
    </script>
  
</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

    <form id="form1" runat="server">
        <div>
            <h1>Login</h1>
            <div class=" w3l-login-form">
                <h2>Login Here</h2>
                <div>

                    <div class=" w3l-form-group">
                        <label>Username:</label>
                        <div class="group">
                            <i class="fas fa-user"></i>
                          <%--  <input type="text" placeholder="Username" />--%>
                            <asp:TextBox ID="Textusername" runat="server" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class=" w3l-form-group">
                        <label>Password:</label>
                        <div class="group">
                            <i class="fas fa-unlock"></i>
                            <%--<input type="password"   />--%>
                            <asp:TextBox ID="Textpassrd" runat="server" class="form-control" TextMode="Password" required="required" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="forgot">
                        <a href="#">Forgot Password?</a>
                        <p>
                            <%--<input type="checkbox">--%>Remember Me</p>

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </div>
                    <%--<button type="submit">Login</button>--%>
                    <asp:Button ID="button" runat="server" Text="Login" OnClick="button_Click"/>
                </div>
                <p class=" w3l-register-p">Don't have an account?<a href="#" class="register"> Register</a></p>
            </div>
            <footer>
                <p class="copyright-agileinfo">&copy; 2019 Login. All Rights Reserved | Design by Akshay Nahar<%--<a href="http://w3layouts.com"></a>--%></p>
            </footer>
        </div>
    </form>
</body>
</html>
