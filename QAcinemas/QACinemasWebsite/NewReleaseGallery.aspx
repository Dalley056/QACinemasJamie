<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="NewReleaseGallery.aspx.cs" Inherits="QACinemasWebsite.NewReleaseGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Form Name -->
    <legend>New Releases</legend>

    <!-- Select Basic -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="selectbasic">Select Genre</label>
      <div class="col-md-4">
        <select id="selectGenre" name="Select Genre" class="form-control" runat="server">
          <option value="1">Horror</option>
          <option value="2">Comedy</option>
            <option value="2">Romance</option>
            <option value="2">Western</option>
            <option value="2">Action</option>
            <option value="2">Adventure</option>
            <option value="2">War</option>
            <option value="2">Documentary</option>

        </select>
      </div>
    </div>


    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; /></div>       
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; /></div>
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; /></div>
        <br />
    </div>
        <br />
    <div class="row">
        <div class="col-sm-3"><img src ="movies\bat.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\super.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\iron.jpg" style=" width:200px; height:228px"; /></div>
        <div class="col-sm-3"><img src ="movies\logan.jpg" style=" width:200px; height:228px"; /></div>
    </div>

</asp:Content>
