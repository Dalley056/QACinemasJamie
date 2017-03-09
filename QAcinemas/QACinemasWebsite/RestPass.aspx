<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RestPass.aspx.cs" Inherits="QACinemasWebsite.RestPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h3 runat="server" class="text-center">Rest password for <%=email %>
                </h3>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <!-- Password input-->
                <div class="form-group ">
                    <label class="col-md-3 control-label col-md-offset-2 " for="NewPassword">New Password</label>
                    <div class="col-md-2">
                        <asp:TextBox name="NewPassword" class="form-control input-md" id="NewPassword" required="" type="password" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group ">
                    <label class="col-md-3 control-label col-md-offset-2" for="reNewPassword">Re-enter new password</label>
                    <div class="col-md-2">
                        <asp:TextBox name="reNewPassword" class="form-control input-md" id="reNewPassword" required="" type="password" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group col-md-offset-5 ">
                    <div class="col-md-2 col-md-offset-5">
                        <button type="submit" name="ButtonRest" class="btn btn-primary" id="ButtonRest">Rest Password</button>
                    </div>
                </div>

            </div>
        </div>

    </form>


</asp:Content>
