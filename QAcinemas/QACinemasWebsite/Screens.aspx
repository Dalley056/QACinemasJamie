<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Screens.aspx.cs" Inherits="QACinemasWebsite.Screens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    Cinema:
    <asp:DropDownList ID="dlstCinema" runat="server">
        <asp:ListItem>Cinema One</asp:ListItem>
        <asp:ListItem>Cinema Two</asp:ListItem>
        <asp:ListItem>Cinema Three</asp:ListItem>
        <asp:ListItem>Cinema Four</asp:ListItem>
        <asp:ListItem>Cinema Five</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Screen:<asp:DropDownList ID="dlstScreen" runat="server">
        <asp:ListItem>Screen One</asp:ListItem>
        <asp:ListItem>Screen Two</asp:ListItem>
        <asp:ListItem>Screen Three</asp:ListItem>
        <asp:ListItem>Screen Four</asp:ListItem>
        <asp:ListItem>Screen Five</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="imgSeatLayout" runat="server" Height="307px" Width="610px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seating Layout<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="314px" Width="609px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Screen View(??)</form>
</asp:Content>
