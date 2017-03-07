<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PlacesToGo.aspx.cs" Inherits="QACinemasWebsite.PlacesToGo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
        <div class="row">
            <%-- places --%>
            <div class="col-sm-offset-0 col-sm-4">
                <label class="col-md-4 control-label" for="selectmultiple">Places</label>
                <div class="col-md-12">
                    <select id="selectmultiple" name="selectmultiple" class="form-control" multiple="multiple">
                        <option value="1">Nandos</option>
                        <option value="2">costa</option>
                    </select>
                </div>
            </div>

            <%-- the place --%>
            <div class="col-sm-8">
                <div class="container">
                    <div class="row">
                        <%-- Discription --%>
                        <div class="col-sm-offset-0 col-sm-4 col-lg-3">
                            hello
                        </div>
                        <%-- Picture --%>
                        <div class="col-sm-8 col-lg-4">
                            tomatoes
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
