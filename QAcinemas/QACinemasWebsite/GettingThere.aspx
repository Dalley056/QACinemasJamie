<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GettingThere.aspx.cs" Inherits="QACinemasWebsite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
     <form id="GettingThere" runat="server">
         <div>
             <label>Location:</label><br />
            <asp:DropDownList ID="ddlLocation" runat="server" Width="200px">
                <asp:ListItem Text="Select Location" Value="0"></asp:ListItem>
                <asp:ListItem Text="CinemaLocation1" Value="1"></asp:ListItem>
                <asp:ListItem Text="CinemaLocation2" Value="2"></asp:ListItem>
                <asp:ListItem Text="CinemaLocation3" Value="3"></asp:ListItem>
                <asp:ListItem Text="CinemaLocation4" Value="4"></asp:ListItem>
                <asp:ListItem Text="CinemaLocation5" Value="5"></asp:ListItem>
            </asp:DropDownList>
             </div>
          <div style="width: 300px; height: 300px; 
            border: solid 1px #ccc; display: inline-block;">
             <p>This is the cinema image.</p>
             </div>
 
            <div style="width: 300px; height: 300px; 
            border: solid 1px #ccc; display: inline-block;">
            <p>This is the cinema address.</p>
            </div>
          <br/>
          <div>
          <asp:TextBox ID="TextBox" runat="server" style="width: 300px;height: 300px"> This is the google map</asp:TextBox>
          </div>
          <br/> 
          <div style="width: 200px; height: 200px; 
            border: solid 1px #ccc; display: inline-block;">
            <p>This is the image for parking.</p>
            </div>
                     

        </form>
        </body>
</asp:Content>
