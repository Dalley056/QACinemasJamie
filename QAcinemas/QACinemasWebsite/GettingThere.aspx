<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GettingThere.aspx.cs" Inherits="QACinemasWebsite.GettingThere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <form id="GettingThere" runat="server">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <h3><%=name %> </h3>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="selectbasic">Select Cinema :</label>
                        <div class="col-md-3 col-md-offset-0">
                            <asp:DropDownList ID="DDLCinimas" class="form-control" runat="server" DataTextField="name" DataValueField="id" AutoPostBack="True"></asp:DropDownList>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <img class="img-rounded" alt="http://lorempixel.com/140/140/" src="<%=cinemaImg%>" width="800" height="400" />
                        </div>
                        <div class="col-md-4">
                            <h4>Cinema Description</h4>
                            <p>
                                <%=Description %>
                            </p>

                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3>How to get there </h3>
                    </div>
                    <div class="col-md-8">
                        <div id="map" style="width:800px; height: 400px"></div>

                        <script>
                            function myMap() {
                                var myCenter = new google.maps.LatLng(<%=lat %>, <%=lon %>);
                                var mapCanvas = document.getElementById("map");
                                var mapOptions = { center: myCenter, zoom: 12 };
                                var map = new google.maps.Map(mapCanvas, mapOptions);
                                var marker = new google.maps.Marker({ position: myCenter });
                                marker.setMap(map);

                                // Zoom to 9 when clicking on marker
                                google.maps.event.addListener(marker, 'click', function () {
                                    map.setZoom(16);
                                    map.setCenter(marker.getPosition());
                                });
                            }
                        </script>

                        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCHS9BF7_TwGPUx5jMdTSvARRppmwRfn5s&callback=myMap"></script>
                    </div>
                    <div class="col-md-4">
                        <h4>Address
                        </h4>
                        <address>
                            <strong><%=name %></strong><br />
                            <%=line1 %>, <%=line2 %><br />
                            <%=city %>, <%=region %><br />
                            <%=country %>, <%=postcode %><br />
                            <abbr title="Phone">P:</abbr>
                            (123) 456-7890
                        </address>
                    </div>
                </div>
                <div class="col-md-12">
                    <h3>Parking </h3>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        >
                        <%=parkingImg %>
                        <img class="img-rounded" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" width="800" height="400" />
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
        </form>
    </body>
</asp:Content>
