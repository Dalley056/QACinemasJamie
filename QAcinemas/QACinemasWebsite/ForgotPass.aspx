<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="QACinemasWebsite.ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-center text-primary">Reset Password</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="alertcomponent" class="alert" runat="server" visible="false">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <h4><span id="alertheader" runat="server">generic_header</span></h4>
                        <span id="alertbody" runat="server">generic_body</span>
                    </div>
                </div>
            </div>
            <div class=" row">
                <div class="col-md-12>">
                    <div class="col-md-2 col-md-offset-5 ">
                        <input name="textEmail" class="form-control input-md" id="textEmail" required="" type="email" placeholder="Email address" />
                        <span class="help-block">Enter the email address used for regestration</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <button class="btn btn-primary active" type="button">
                        Reset Password
                    </button>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
