<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projectwithgopal.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>My Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/my-login.css">
    </head>

    <body class="my-login-page">
        

        <!--------->
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v15.0&appId=714200168789497&autoLogAppEvents=1" nonce="jykOFyg3"></script>

        <!------>
        <section class="h-100">
            <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">
                        <div class="brand">
                            <img src="img/logo1.gif" alt="logo">
                        </div>
                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Login</h4>
                                <form method="POST" class="my-login-validation" novalidate="">
                                    <div class="form-group">
                                        <label for="email">E-Mail Address</label>
                                        <!--		<input id="email" type="email" class="form-control" name="email" value="" required autofocus>    -->
                                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                        
                                       
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required." Text="Mail Required." Display="Dynamic" BorderColor="Red" ControlToValidate="email" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                        <!-- use regular expression for email verification -->


                                    </div>

                                    <div class="form-group">
                                        <label for="password">
                                            Password
										<a href="forgot.aspx" class="float-right">Forgot Password?
                                        </a>
                                        </label>
                                        <!--		<input id="password" type="password" class="form-control" name="password" required data-eye>   -->
                                        <asp:TextBox ID="password" runat="server"></asp:TextBox>

                                        <!-- you can password validator -->
                                        <div class="invalid-feedback">
                                            Password is required
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="remember" id="remember" class="custom-control-input">
                                            <label for="remember" class="custom-control-label">Remember Me</label>
                                        </div>
                                    </div>



                                    <div class="form-group m-0">
                                        <!-- facebook login icom -->


                                        <!--		<button type="submit" class="btn btn-primary btn-block">
										Login
									</button>
								

							                -->
                                        <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                        <br />
                                        
                                         <!--
                                        <br />
                                        <div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>
                                           -->
                                       
                                      
                                        <script>
                                            window.fbAsyncInit = function () {
                                                FB.init({
                                                    appId: '543385537734176',
                                                    cookie: true,
                                                    xfbml: true,
                                                    version: 'v15.0'
                                                });

                                                FB.AppEvents.logPageView();

                                            };

                                            (function (d, s, id) {
                                                var js, fjs = d.getElementsByTagName(s)[0];
                                                if (d.getElementById(id)) { return; }
                                                js = d.createElement(s); js.id = id;
                                                js.src = "https://connect.facebook.net/en_US/sdk.js";
                                                fjs.parentNode.insertBefore(js, fjs);
                                            }(document, 'script', 'facebook-jssdk'));
                                        </script>
                                                                        </div>
                                    <br />


                                    <div class="mt-4 text-center">
                                        Don't have an account? <a href="create.aspx">Create One</a>
                                    </div>
                                    
                                    <div class="mt-4 text-center">
                                        For admin login click here <a href ="Admin.aspx">Admin</a>
                                    </div>


                                </form>


                            </div>
                        </div>

                        <div class="footer">
                            Copyright &copy; 2023 &mdash; Projectwithgopal 
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </body>
    </html>
    
</asp:Content>
