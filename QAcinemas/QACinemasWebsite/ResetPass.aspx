<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="QACinemasWebsite.ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>New password for <%=request.User.Username %></h3>
    <form runat="server" class="form-horizontal">
        <div class="row">
            <div class="col-md-12">

                <!-- Password input-->
                <div class="form-group ">
                    <label class="col-md-3 control-label col-md-offset-2 " for="NewPassword">
                    New Password</label>
                    <div class="col-md-2">
                        <asp:TextBox name="NewPassword" class="form-control input-md" ID="NewPassword" required="" type="password" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group ">
                    <label class="col-md-3 control-label col-md-offset-2" for="reNewPassword">Re-enter new password</label>
                    <div class="col-md-2">
                        <asp:TextBox name="reNewPassword" class="form-control input-md" ID="reNewPassword" required="" type="password" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group col-md-offset-5 ">
                    <div class="col-md-2 col-md-offset-5">
                        <asp:Button CssClass ="btn btn-primary" id="ConfirmButton" Text="Confirm" runat="server" OnClick="ConfirmButton_Click" />
                    </div>
                </div>

            </div>
        </div>

    </form>


</asp:Content>
