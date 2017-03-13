<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="QACinemasWebsite.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            height: 271px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <span style="position: absolute; left: 300px;">
        <asp:Label ID="lblEmail" runat="server" Text="Your Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        <br />
        <asp:TextBox ID="txtMessage" runat="server" Height="164px" Width="289px"></asp:TextBox>
          
        </span>
        <span style="position: absolute; right: 300px;">
            Email
            <br />
            Something@Something.co.uk
            <br />
            Telephone
            <br />
            01297 827341
            <br />

        </span>
        <asp:Button ID="ButtonSend" runat="server" OnClick="ButtonSend_Click" Text="Send" />
    </form>
</asp:Content>