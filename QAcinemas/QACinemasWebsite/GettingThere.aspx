<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GettingThere.aspx.cs" Inherits="QACinemasWebsite.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <form id="GettingThere" runat="server">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <h3>This Is the Main Cinema
                        </h3>
                        <div class="row">
                            <div class="col-md-8">
                                <img class="img-rounded" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" width="800" height="400" />
                            </div>
                            <div class="col-md-4">
                                <h3>Address
                                </h3>
                                <address>
                                    <strong>Twitter, Inc.</strong><br />
                                    795 Folsom Ave, Suite 600<br />
                                    San Francisco, CA 94107<br />
                                    <abbr title="Phone">P:</abbr>
                                    (123) 456-7890
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <h3>How to Get There</h3>
                        <div id="map" style="width: 100%; height: 500px"></div>

                        <script>
                            function myMap() {
                                var myCenter = new google.maps.LatLng(51.508742, -0.120850);
                                var mapCanvas = document.getElementById("map");
                                var mapOptions = { center: myCenter, zoom: 10 };
                                var map = new google.maps.Map(mapCanvas, mapOptions);
                                var marker = new google.maps.Marker({ position: myCenter });
                                marker.setMap(map);

                                // Zoom to 9 when clicking on marker
                                google.maps.event.addListener(marker, 'click', function () {
                                    map.setZoom(12);
                                    map.setCenter(marker.getPosition());
                                });
                            }
                        </script>

                        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCHS9BF7_TwGPUx5jMdTSvARRppmwRfn5s&callback=myMap"></script>

                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <h3>Parking
                        </h3>
                        <img class="img-rounded" alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" width="800" height="400" />
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
            <!-- normal -->
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
            <div style="width: 300px; height: 300px; border: solid 1px #ccc; display: inline-block;">
                <p>This is the cinema image.</p>
            </div>

            <div style="width: 300px; height: 300px; border: solid 1px #ccc; display: inline-block;">
                <p>This is the cinema address.</p>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox" runat="server" Style="width: 300px; height: 300px"> This is the google map</asp:TextBox>
            </div>
            <br />
            <div style="width: 200px; height: 200px; border: solid 1px #ccc; display: inline-block;">
                <p>This is the image for parking.</p>
            </div>


        </form>
    </body>
</asp:Content>
