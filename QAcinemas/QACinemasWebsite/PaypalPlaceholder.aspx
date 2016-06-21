<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PaypalPlaceholder.aspx.cs" Inherits="QACinemasWebsite.PaypalPlaceholder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal" id="TakePaymentDetails" runat="server">
        <fieldset>
            
            <!-- Form Name -->
            <legend>Payment Details</legend>

            <!-- Name input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="TextBoxCardName">Name on card</label>
                <div class="col-md-4">
                    <input id="TextBoxCardName" name="TextBoxCardName" type="text" placeholder="Enter card name" class="form-control input-md" required="" runat="server" />
                    <span class="help-block">Please enter the full name as printed on the card</span>
                </div>
            </div>

            <!-- Card type input - drop down options? -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="ddCardType">Card Type</label>

                <div align="left" class="col-md-4">
                    <asp:DropDownList ID="ddCardType" runat="server" Width="200px" class="form-control input-md">
                        <asp:ListItem Text="American Express" Value="0"></asp:ListItem>
                        <asp:ListItem Text="VISA Debit" Value="1"></asp:ListItem>
                        <asp:ListItem Text="MasterCard" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Credit Card" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Etc" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                    <span class="help-block">Please select the card type</span>
                </div>
            </div>

            <!-- CVC input-->
            <!-- include image of back of card?-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="TextBoxCVC">CVC</label>
                <div class="col-md-4">
                    <input id="TextBoxCVC" name="TextBoxCVC" type="text" maxlength="3" placeholder="Enter your security code" class="form-control input-md" required="" runat="server" />
                    <span class="help-block">This is the 3 digit number on the back of your card</span>
                </div>
            </div>

            <!-- Card Number input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="TextBoxCardNumber">Card Number</label>
                <div class="col-md-4">
                    <input id="TextBoxCardNumber" name="TextBoxCardNumber" type="text" maxlength="16" placeholder="Enter card number" class="form-control input-md" required="" runat="server"/>
                    <span class="help-block">This is the 16 digit number on the front of your card</span>
                </div>

            </div>

            
            <!-- LogIn Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="ButtonConfirm"></label>
                <div class="col-md-4">
                    
                    <asp:Button cssclass="btn btn-primary" Text="Confirm" runat="server" OnClick="Confirm_Click" />
                </div>
            </div>


        </fieldset>
    </form>

</asp:Content>
