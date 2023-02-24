<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="projectwithgopal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!Doctype html>
    <html xmlns="http://www.w3.org/1999/xhtml"></html>
    <link href="StyleSheet1.css" rel="stylesheet" />
    
   <style>
       div.jumbotron {
          
           color: black;
           padding: 100px 25px;
           font-family: Montserrat, sans-serif;
           text-align: center;
       }
   </style>

    <style>
        .detail {
            color: black;
            padding: 100px 25px;
            font-family: Montserrat, sans-serif;
            text-align: center;
            
        }
    </style>
    
   
    <div class="jumbotron">Here You'll find your matrial for your university</div>
        <br />

    <div class="detail"> Register here
        <br />
    <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
   

    <br />

    <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password."></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
    <br />
    <asp:Label ID="Label4" runat="server" Text="Reg no."></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Create account." OnClick="Button1_Click" />
    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
    <br />

        </div>
    

    <br />

   



    <br/>

    <div class="jumbotron">
        <p>Login from here.</p>

        <asp:Label ID="Label8" runat="server" ></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> 
        <!-- password is textbox6 -->
        
        
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Register Number"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

        <br />
        <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click1" />

    </div>

    <br />
    <br />
       
   

        
   
        
    <p class="jumbotron">Proeceed without login..
        <asp:Button runat="server" Text="click here." OnClick="Unnamed1_Click"></asp:Button></p>

   
   
     
    
     

   

</asp:Content>
