<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PaymentConfirmation.aspx.cs" Inherits="QACinemasWebsite.PaymentConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal" id="PaymentConfirmation" runat="server">
        <fieldset>

            <!-- Form Name -->
            <legend>Confirmation </legend>

            <!-- Thanks/Confirmation-->

            <div class="form-group">

                <label class="col-md-4 control-label" for="TextBoxMovieName"></label>

                <div class="col-md-4">
                    <label >Thank you.</label>
                    <br />
                    <label >Your payment details have been confirmed.</label>
                    <br />
                    <br />
                    <br />
                    <textarea id="TextArea1" cols="55" rows="15" readonly="readonly" runat="server" cursor="default" ></textarea>                                   
                </div>
            </div>

            <!-- LogIn Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="ButtonConfirm"></label>
                <div class="col-md-4">
                    
                    <asp:Button cssclass="btn btn-primary" Text="Return" runat="server" OnClick="Return_Click" />
                </div>
            </div>


        </fieldset>

    </form>

</asp:Content>

