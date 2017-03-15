<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="SelectScreening.aspx.cs" Inherits="QACinemasWebsite.Booking.SelectScreening" %>
<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <script>
            function returnDate(a, b) {
                var i = a;
                n = new Date();
                rData = n.getDate + 1;
                var x = document.getElementById(b);
                x.innerHTML = x;
            }
        </script>
        <asp:Label ID="lblCinema" runat="server" Text="Cinema:"></asp:Label>
        <asp:DropDownList ID="dlstCinema" runat="server" OnSelectedIndexChanged="dlstCinema_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblMovie" runat="server" Text="Movie:"></asp:Label>
        <asp:DropDownList ID="dlstMovie" runat="server" OnSelectedIndexChanged="dlstMovie_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblScreenType" runat="server" Text="Screen Type:"></asp:Label>
        <asp:DropDownList ID="dlstScreenType" runat="server" OnSelectedIndexChanged="dlstScreenType_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Image ID="imgSelectedMovie" runat="server" Height="150px" Width="150px" />
        <asp:Label ID="lblMovieDescription" runat="server" Text="Label"></asp:Label>
        <asp:Panel ID="pnlDay1" runat="server" Height="53px">
            <br />
            
        </asp:Panel>       
        <asp:Panel ID="pnlDay2" runat="server">
            <div id="d1" runat="server"></div>
        </asp:Panel>
        <asp:Panel ID="pnlDay3" runat="server">
        </asp:Panel>
        <asp:Panel ID="pnlDay4" runat="server">
        </asp:Panel>
        <asp:Panel ID="pnlDay5" runat="server">
        </asp:Panel>
        <asp:Panel ID="pnlDay6" runat="server">
        </asp:Panel>
        <asp:Panel ID="pnlDay7" runat="server">
        </asp:Panel>
        <br />
        <br />
    </form>
</asp:Content>
