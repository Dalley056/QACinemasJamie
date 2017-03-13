<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PlacesToGo.aspx.cs" Inherits="QACinemasWebsite.PlacesToGo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form runat="server">

            <asp:DropDownList ID="ddlCinema" runat="server" DataValueField="Id" DataTextField="Name" Width="300px" Height="40px" OnSelectedIndexChanged="ddlCinema_SelectedIndexChanged"></asp:DropDownList>

            <div class="row">
                <%-- places --%>
                <div class="col-sm-offset-0 col-sm-4">
                    <label class="col-md-4 control-label" for="selectmultiple">Places</label>
                    <div class="col-md-12">
                        <select style="height=wrap-content" id="selectmultiple" name="selectmultiple" class="form-control" multiple="multiple">
                            <option value="1">Nandos</option>
                            <option value="2">costa</option>
                        </select>
                    </div>
                </div>
                </div>s
                <%-- the place --%>
                <div class="col-sm-8">
                    <div class="container">
                        <div class="row">
                            <%-- Discription --%>
                            <div class="col-sm-offset-0 col-sm-4 col-lg-3">
                                <label class="col-md-4 control-label" for="selectmultiple">Description</label>
                                <div class="col-lg-12" id="descInput" runat="server">
                                    <p id="descP" style="word-wrap: break-word" runat="server">Hello my name is asdjkjfklsfklsvlkshvlksklvljnkslvsvdnkdsdvkdv;lknlkvnslknvlsnvlsknvksnvlksnvknskvnslvnslnvlsnvsvnsnvsln snflsknlksnvlsknvlknslvnlsn  snvsdlknvslnls lsn slns sln ls ns klnsl nl nl snlskl nsl nl sn lnl nl nsl nls nls n nslslk nln n ln lns ln slkns lns </p>
                                </div>
                                <br />
                            </div>
                            <%-- Picture --%>
                            <div class="col-sm-8 col-lg-2">
                                <label class="col-md-4 control-label" for="selectmultiple">Pictures</label>
                                <div class="col-lg-12">
                                    <!--<img src="mama mia where is the image" alt="insert venue image here" width="200" height="200" />-->
                                    <asp:Image ID="imgVenue" runat="server" ImageUrl="mama mia where is the image" alt="insert venue image here" BorderColor="Black" width="200" height="200" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- insert image??-->
                </div>
            <div>
                Openning Times:
            </div>
                <input type="text" id="" />
        </form>
    </div>
</asp:Content>