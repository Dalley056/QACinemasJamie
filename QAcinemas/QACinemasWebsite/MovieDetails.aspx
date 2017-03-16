<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="QACinemasWebsite.MovieDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    
    <div class="container-fluid">
	    <div class="row">
		    <div class="col-md-12">
			    <div class="carousel slide" id="carousel-FilmSmallImg">

				    <ol class="carousel-indicators">
					    <li class="active" data-slide-to="0" data-target="#carousel-FilmSmallImg"></li>
					    <li data-slide-to="1" data-target="#carousel-FilmSmallImg"></li>
					    <li data-slide-to="2" data-target="#carousel-FilmSmallImg"></li>
                        <li data-slide-to="3" data-target="#carousel-FilmSmallImg"></li>
				    </ol>

				    <div class="carousel-inner" style="height:250px">
          <%
              long retrievedFilmId = 2; //**    need to be dynamic -- pulled as a request variable      **//

              List<String> FilmSmallImages = ListOfFilmSmallImages(retrievedFilmId);

              for (int i = 0; i < FilmSmallImages.Count; i++)
              {
                  if (i == 0)
                  {
          %>          
                        <div class="item active">
                            <img class="img-responsive center-block img-thumbnail" src="<%=FilmSmallImages[i].ToString() %>" title="<%=i %>" width="460">
                        </div>
          <%
                  }
                  else
                  {
          %>
                        <div class="item">
                            <img class="img-responsive center-block img-thumbnail" src="<%=FilmSmallImages[i].ToString() %>" title="<%=i %>" width="460">
                        </div>
          <%
                  }
              }

         %>
				    </div> 
                    
                    <a class="left carousel-control" href="#carousel-FilmSmallImg" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a> 
                    <a class="right carousel-control" href="#carousel-FilmSmallImg" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>

			    </div>
		    </div>
	    </div>

	    <div class="row">
		    <div class="col-md-5">
                <div id="imagelargedata" runat="server"></div>
		    </div>
		    <div class="col-md-7">
			    <div class="row">
				    <div class="col-md-12">
                        <div id="titledata" runat="server"></div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-md-12">
                        <div id ="classificationdata" runat="server"></div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-md-12">
                        <div id="descriptiondata" runat="server"></div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-md-12">
                        <div id="moviespecificinformation" runat="server"></div>
				    </div>
			    </div>
		    </div>
	    </div>
    </div>


</asp:Content>
