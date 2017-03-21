<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="QACinemasWebsite.DiscussionBoard.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
    <style>
        .panel-height {
            height: 125px;
            overflow: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">

    <div class="container">
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
        </ol>

        <div class="list-group">
            <%
                List<DiscussionPanel> panels = Get_Threads();




                foreach (DiscussionPanel panel in panels)
                { %>
            <a href="<%=panel.URL %>" class="list-group-item">
                <h4 class="list-group-item-heading"><%=panel.Film.Title %></h4>
                <div class="list-group-item-text">
                    <div class="row">
                        <div class="col-xs-2">
                            <img class="img-thumbnail" src="<%=panel.Film.ImgLarge %>">
                        </div>
                        <div class="col-xs-10">
                            <%
                                if (panel.LastPost != null)
                                {
                            %>
                            <p><strong>Last Post: <%= panel.LastPost.DateAdded %></strong></p>

                            <%};%>
                            <p><strong>Posts: <%=panel.PostCount %></strong></p>
                            <p><%=panel.Film.Description %></p>
                        </div>
                    </div>
                </div>

            </a>



            <%};%>
        </div>
    </div>
</asp:Content>
