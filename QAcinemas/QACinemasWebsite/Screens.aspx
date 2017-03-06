<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Screens.aspx.cs" Inherits="QACinemasWebsite.Screens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    Cinema:<asp:DropDownList ID="dlstCinema" runat="server" OnSelectedIndexChanged="dlstCinema_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Screen:<asp:DropDownList ID="dlstScreen" runat="server" OnSelectedIndexChanged="dlstScreen_SelectedIndexChanged">
        <asp:ListItem>Screen One</asp:ListItem>
        <asp:ListItem>Screen Two</asp:ListItem>
        <asp:ListItem>Screen Three</asp:ListItem>
        <asp:ListItem>Screen Four</asp:ListItem>
        <asp:ListItem>Screen Five</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="imgSeatLayout" runat="server" Height="500px" Width="500px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seating Layout<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="imgScreenView" runat="server" Height="500px" Width="500px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Screen View(??)</form>
</asp:Content>