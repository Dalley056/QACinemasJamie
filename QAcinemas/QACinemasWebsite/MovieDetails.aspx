<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="QACinemasWebsite.MovieDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  



    <div id="FilmImages" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#FilmImages" data-slide-to="0" class="active"></li>
        <li data-target="#FilmImages" data-slide-to="1"></li>
        <li data-target="#FilmImages" data-slide-to="2"></li>
        <li data-target="#FilmImages" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox" style="height:250px">
        <div class="item active">
          <img class="img-responsive center-block" src="Logan1.jpg" alt="Logan1" width="200">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan2.jpg" alt="Logan2" width="460">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan3.jpg" alt="Logan3" width="460">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan4.jpg" alt="Logan4" width="460">
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#FilmImages" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#FilmImages" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <br />
    <br />


    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <img class="img-responsive; img-rounded" src="LoganMain.jpg" alt="LoganMain" />
            </div>
            <div class="col-sm-offset-1 col-sm-6">
                NAything about the selected film
                fdjhsfjhdsf
                dsfdsfdsf
                dsfdsfsdg
            </div>
        </div>
    </div>

<%--    <div>
        <div id="Main_Image" style="position:absolute; top:400px; left:200px;" >
           
            <img class="img-responsive; img-rounded" src="LoganMain.jpg" alt="LoganMain" />
        </div>

        <div id="Film_Info" style="border: 5px solid; position:absolute; top:400px; right:200px;">

            NAything about the selected film
        </div>
    </div>--%>


</asp:Content>
