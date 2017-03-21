<%@ Page Title="Classifications - QACinemas" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Classification.aspx.cs" Inherits="QACinemasWebsite.Classifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*Removes border from images*/
        .img-thumbnail {
            border: 0 none;
            box-shadow: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Classifications</h1>
        <div class="row">
            <%
                QACinemasWebsite.DataSetTableAdapters.ClassificationsTableAdapter cta = new QACinemasWebsite.DataSetTableAdapters.ClassificationsTableAdapter();
                QACinemasWebsite.DataSet.ClassificationsDataTable data = cta.GetData();
                if (data.Count == 0) //If no classifications found, display error
                {
            %>
            <p>No classificaition data could be found. If this keeps occuring please report this issue to the site administrator</p>
            <%
                }
                foreach (QACinemasWebsite.DataSet.ClassificationsRow row in data) //Assemble classification panels
                {
            %>
            <div class="col-xs-12">
                <div class="panel panel-default" id="<%=row.Title %>">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-2 col-xs-2">
                                <img src="<%=row.ImgLarge %>" class="img-thumbnail" title="<%=row.Title %> Classification" />
                            </div>
                            <div class="col-sm-10 col-xs-10">
                                <h3><%=row.Title %></h3>
                                <hr />
                                <p><%=row.Description %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}; %>
        </div>
    </div>
</asp:Content>
