<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MovieListingGallarey.aspx.cs" Inherits="QACinemasWebsite.MovieListingGallarey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="container">
<fieldset>

<!-- Form Name -->
<legend>Movie Gallery</legend>

<!-- Select Basic -->
<div class="form-group">
  &nbsp;<asp:Label ID="Label1" runat="server" Text="Select Genere"></asp:Label>
  </div>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="43px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="557px">
            </asp:DropDownList>
    


</fieldset>
        <br />


    <div class="row">
        
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label2" runat="server" Text="Batman"></asp:Label>
            </div>
        </div>
        
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label3" runat="server" Text="SuperMan"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label4" runat="server" Text="IronMan"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label5" runat="server" Text="Logan"></asp:Label>
            </div>
        </div>
        
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label6" runat="server" Text="Batman"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label7" runat="server" Text="SuperMan"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label8" runat="server" Text="Iron Man"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label9" runat="server" Text="Logan"></asp:Label>
            </div>
        </div>
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label10" runat="server" Text="Batman"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label11" runat="server" Text="SuperMan"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label12" runat="server" Text="Iron Man"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label13" runat="server" Text="Logan"></asp:Label>
            </div>
        </div>
        <br />
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label14" runat="server" Text="Batman"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label15" runat="server" Text="SiperMan"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label16" runat="server" Text="Iron Man"></asp:Label>
            </div>
        </div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; />
            <div>
        <asp:Label ID="Label17" runat="server" Text="Logan"></asp:Label>
            </div>
        </div>
    </div>
</div>
    </form>
</asp:Content>
