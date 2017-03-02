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
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="img-responsive center-block" src="Logan1.jpg" alt="Logan1" width="200" height="250">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan2.jpg" alt="Logan2" width="460" height="345">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan3.jpg" alt="Logan3" width="460" height="345">
        </div>

        <div class="item">
          <img class="img-responsive center-block" src="Logan4.jpg" alt="Logan4" width="460" height="345">
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


    <div id="Main_Image" style="border: 5px solid">
        Main image
    </div>

    <div id="Film_Info" style="border: 5px solid">

        NAything about the selected film
    </div>

</asp:Content>
