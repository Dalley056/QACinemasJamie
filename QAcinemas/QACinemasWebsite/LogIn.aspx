<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="QACinemasWebsite.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="alertcomponent" class="alert" runat="server" visible="false">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4><span id="alertheader" runat="server">generic_header</span></h4>
        <span id="alertbody" runat="server">generic_body</span>
    </div>

    <form class="form-horizontal" runat="server" onsubmit="OnSignIn">
        <fieldset>

            <!-- Form Name -->
            <legend>Log In</legend>

            <!-- Username input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="TextBoxUserName">Username</label>
                <div class="col-md-4">
                    <input id="TextBoxUserName" name="TextBoxUserName" type="text" placeholder="Enter Your username" class="form-control input-md" required="" runat="server" />
                    <span class="help-block">Enter Username or Email Address</span>
                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxPassword">Password</label>
                <div class="col-md-4">
                    <input id="TextBoxPassword" name="textBoxPassword" type="password" placeholder="Password" class="form-control input-md" required="" runat="server"/>
                    <br />
                    <a href="forgotPass.aspx">Forgot Password</a>
                </div>
            </div>

            <!-- LogIn Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="ButtonSignIn"></label>
                <div class="col-md-4">
                    

                    <asp:Button cssclass="btn btn-primary" Text="Sign In" runat="server" OnClick="SignIn_Click" />
                    <a href="register.aspx">Register</a>
                </div>
            </div>

        </fieldset>
    </form>
    

</asp:Content>
