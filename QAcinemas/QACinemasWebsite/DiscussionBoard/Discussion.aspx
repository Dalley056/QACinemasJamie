<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="Discussion.aspx.cs" Inherits="QACinemasWebsite.DiscussionBoard.Discussion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
    <style>
        .row-height {
            height: 70px;
            text-align: center;
            padding-top: 25px;
        }

        .posttextbox {
            resize: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="/DiscussionBoard/Home.aspx">Home</a></li>
            <li><a href="#">Discussion</a></li>
        </ol>

        <div class="row">
            <%

                try
                {
                    QACinemasWebsite.DataSetTableAdapters.PostsTableAdapter pta = new QACinemasWebsite.DataSetTableAdapters.PostsTableAdapter();
                    QACinemasWebsite.DataSetTableAdapters.UsersTableAdapter uta = new QACinemasWebsite.DataSetTableAdapters.UsersTableAdapter();
                    QACinemasWebsite.DataSet.PostsDataTable data = pta.GetPostsByFilmId(Convert.ToUInt32(Request["id"].ToString()), true);
                    QACinemasWebsite.DataSet.UsersDataTable userdata = uta.GetData();




                    if (data.Count == 0) //If no classifications found, display error
                    {
            %>
            <p>No posts found. Make one!</p>
            <%
                }
                foreach (QACinemasWebsite.DataSet.PostsRow row in data) //Assemble classification panel
                {

                    //Get user from userdata
                    QACinemasWebsite.DataSet.UsersRow user = null;
                    foreach (QACinemasWebsite.DataSet.UsersRow X in userdata)
                    {
                        if (X.Id == row.UserId)
                        {
                            user = X;
                            break;
                        }
                    }
                    string username = "[UNKNOWN]";
                    if (user != null)
                    {
                        username = user.Username;
                    }

            %>
            <div class="col-xs-12">
                <div class="panel panel-default" id="<%=row.Id %>">
                    <div class="panel-body">
                        <div class="row">
                            <div class=" col-xs-3">
                                <div class="container-fluid">
                                    <div class="well" style="width: inherit; height: inherit;">
                                        <p><%=username %></p>
                                        <p>ID: <%=row.Id %></p>
                                        <p style="font-size: 10px;">Posted: <%=row.DateAdded %></p>
                                        <p>
                                            <button postid="<%=row.Id %>" class="btn btn-default btn-sm" onclick="OnQuoteClick(this)">Quote</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-9">
                                <p><%=PostTextFormatter(row.Text) %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%};

                }
                catch (NullReferenceException exc)
                {
                %>
                  <p><strong>An error occured while fetching discussion.</strong></p>
                  <p><%=exc.Message %></p>
                <%
                };
            %>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-12">
                <form runat="server">
                    <div id="newpostpanel" class="panel panel-default">
                        <h5 class="panel-heading">New Post</h5>
                        <div class="panel-body">
                            <asp:TextBox ID="PostTextBox" runat="server" Rows="10" Enabled="True" CssClass="form-control posttextbox" TextMode="multiline"></asp:TextBox>
                        </div>
                        <div class="panel-footer">
                            <asp:Button ID="PostSubmitButton" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="PostSubmitButton_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>


        function OnQuoteClick(X) {
            var id = X.getAttribute('postid');
            document.getElementById('<%= PostTextBox.ClientID %>').innerHTML += "@@" + id;
            document.getElementById("newpostpanel").scrollIntoView();
        }
    </script>
</asp:Content>
