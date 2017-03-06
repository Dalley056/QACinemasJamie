<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ListingGallery.aspx.cs" Inherits="QACinemasWebsite.ListingGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div class="container">
        <%-- Options --%>
        <div class="row form-group">

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="selectbasic">Select Basic</label>
                <div class="col-md-4">
                    <select id="selectbasic" name="selectbasic" class="form-control">
                        <option value="1">Option one</option>
                        <option value="2">Option two</option>
                    </select>
                </div>
                <label class="col-md-2 control-label" for="selectOrder">Order By</label>
                <div class="col-md-2 col-md-offset-0">
                    <select id="selectOrder" name="selectOrder" class="form-control">
                        <option value="1">Any</option>
                        <option value="2">Release Date</option>
                        <option value="2">Rating</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
        </div>
    </div>


    <%--    <div class="row">





        <label class="col-md-1 control-label" for="ChooseMovie">Select A Movie</label>
        <div class="col-md-2">
            <select id="ChooseMovie" name="ChooseMovie">
                <option value="1">jason bourne</option>
                <option value="2">the mechanic</option>
            </select>
            <a href="#">date</a>
            <a href="#">rating</a>
            <select id="Choosegenres" name="ChooseMovie">
                <option value="1">Action</option>
                <option value="2">Comedy</option>
            </select>
        </div>

    </div>
    moving listing 
    <div class="row">
        <div class="col-xs-12">
            My friend
        </div>
    </div>--%>
</asp:Content>
