<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="Discussion.aspx.cs" Inherits="QACinemasWebsite.DiscussionBoard.Discussion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="/DiscussionBoard/Home.aspx">Home</a></li>
            <li><a href="#">Discussion</a></li>
        </ol>

        <div class="row">
            <%
                QACinemasWebsite.DataSetTableAdapters.PostsTableAdapter pta = new QACinemasWebsite.DataSetTableAdapters.PostsTableAdapter();
                QACinemasWebsite.DataSetTableAdapters.UsersTableAdapter uta = new QACinemasWebsite.DataSetTableAdapters.UsersTableAdapter();
                QACinemasWebsite.DataSet.PostsDataTable data = pta.GetPostsByFilmId(Convert.ToUInt32(Request["id"].ToString()), true);
                if (data.Count == 0) //If no classifications found, display error
                {
            %>
            <p>No classificaition data could be found. If this keeps occuring please report this issue to the site administrator</p>
            <%
                }
                foreach (QACinemasWebsite.DataSet.PostsRow row in data) //Assemble classification panel

                {

            %>
            <div class="col-xs-12">
                <div class="panel panel-default" id="<%=row.Id %>">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-2 col-xs-2">
                                <p>USERNAME</p>
                                <p><%=row.DateAdded %></p>
                            </div>
                            <div class="col-sm-10 col-xs-10">
                                <p><%=row.Text %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}; %>
        </div>

    </div>
</asp:Content>
