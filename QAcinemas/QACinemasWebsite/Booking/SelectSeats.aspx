<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="SelectSeats.aspx.cs" Inherits="QACinemasWebsite.Booking.SelectSeats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        Will add code to grab ino about the selected film from the session object (Will be created when)
        <br />
        the user submits the previous form
        <%Response.Write(Request["sID"]); %>
        <br />
        <asp:Label ID="lblFilmStuff" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblNoSeats" runat="server" Text="Number of Seats:"></asp:Label>
        <asp:DropDownList ID="dlstNoSeats" runat="server" OnSelectedIndexChanged="dlstNoSeats_SelectedIndexChanged">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Image ID="imgInteractiveSeats" runat="server" Height="500px" Width="500px" />
        <br />
        This will also grab from the session and calculate the price based on number of seats selected<br />
        <asp:Button ID="btnToPay" runat="server" Text="To Payment" OnClick="btnToPay_Click" />
    </form>
</asp:Content>
