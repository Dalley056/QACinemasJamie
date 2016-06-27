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
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="textBoxUsername">Username</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="textBoxUsername" name="textBoxUsername" placeholder="" class="form-control input-md" required="" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <asp:Button ID="ResetButton" CssClass="btn btn-primary active" Text="Reset Password" runat="server" OnClick="ResetButton_Click"/>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
