<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MovieListingGallarey.aspx.cs" Inherits="QACinemasWebsite.MovieListingGallarey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">

    
    <div class="container">
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        
    </div>
        <div class="container">

    <%
        QACinemasWebsite.DataSetTableAdapters.FilmsTableAdapter filmTableAdapter = new QACinemasWebsite.DataSetTableAdapters.FilmsTableAdapter();
        QACinemasWebsite.DataSet.FilmsDataTable getFilmsData = filmTableAdapter.GetFilmImgAndMovieTitleByGenreId(1);
        foreach (QACinemasWebsite.DataSet.FilmsRow row in getFilmsData)
        {
                %>
        

        



        
    <div class="row">
        <div class="col-sm-3">
            <br />
            <img src="<% = row.ImgSmall %>" style="width: 200px; height: 228px" />
        <div>
            <h1"<%= row.Title %>"></h1>
        </div>
            </div>
        </div>
           
            

         <%};
              %>
            </div>
            </form>
    <br />
    <br />
</asp:Content>
