<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="projectwithgopal.WebForm11" %>




 <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>My Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/my-login.css">
    </head>

     <body class="my-login-page">
         <section>
             <script>

             // Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyCLW89EQq8nybKbCIo2zGV4d0AQaQwQxRw",
  authDomain: "projectgopal-a12dd.firebaseapp.com",
  projectId: "projectgopal-a12dd",
  storageBucket: "projectgopal-a12dd.appspot.com",
  messagingSenderId: "936006970498",
  appId: "1:936006970498:web:a46b23bfbc62eb0e71189b"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

             </script>

             <div class="container h-100">
                <div class="row justify-content-md-center h-100">
                    <div class="card-wrapper">
                        <div class="brand">
                            <img src="img/logo1.gif" alt="logo">
                        </div>
                        <div class="card fat">
                            <div class="card-body">
                                <h4 class="card-title">Admin Login</h4>
                                <form method="POST" class="my-login-validation" novalidate="">
                                    <div class="form-group">
                                        <label for="email">E-Mail Address</label>
                                        <!--		<input id="email" type="email" class="form-control" name="email" value="" required autofocus>    -->
                                        <asp:TextBox ID="email1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Email is required." Text="Mail Required." Display="Dynamic" BorderColor="Red" ControlToValidate="email1" SetFocusOnError="True"></asp:RequiredFieldValidator>

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
                                        <asp:Button  class="btn btn-primary btn-block" ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
                                        <br />
                                        
                                         <!--
                                        <br />
                                        <div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>
                                           -->
                                                                        </div>
                                    <br />


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
