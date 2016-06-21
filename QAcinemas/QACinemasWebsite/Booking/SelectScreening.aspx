<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="SelectScreening.aspx.cs" Inherits="QACinemasWebsite.Booking.SelectScreening" %>
<asp:Content ID="Content1" ContentPlaceHolderID="membershead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MembersContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="lblCinema" runat="server" Text="Cinema:"></asp:Label>
        <asp:DropDownList ID="dlstCinema" runat="server" OnSelectedIndexChanged="dlstCinema_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblMovie" runat="server" Text="Movie:"></asp:Label>
        <asp:DropDownList ID="dlstMovie" runat="server" OnSelectedIndexChanged="dlstMovie_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblScreenType" runat="server" Text="Screen Type:"></asp:Label>
        <asp:DropDownList ID="dlstScreenType" runat="server" OnSelectedIndexChanged="dlstScreenType_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblTime" runat="server" Text="Date(?):"></asp:Label>
        <asp:DropDownList ID="dlstTime" runat="server" OnSelectedIndexChanged="dlstTime_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:Image ID="imgSelectedMovie" runat="server" Height="150px" Width="150px" />
        <asp:Label ID="lblMovieDescription" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="odsFillingTimes">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="SelectSeats.aspx?sID={0}" DataTextField="StartTime" DataTextFormatString="{0:t}" HeaderText="Start Time" SortExpression="StartTime" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="odsFillingTimes" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetShowingsByCinemaIdFilmId" TypeName="QACinemasWebsite.DataSetTableAdapters.ShowingsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ScreenId" Type="Int64" />
                <asp:Parameter Name="FilmId" Type="Int64" />
                <asp:Parameter Name="StartTime" Type="DateTime" />
                <asp:Parameter Name="EndTime" Type="DateTime" />
                <asp:Parameter Name="CostPerSeat" Type="Decimal" />
                <asp:Parameter Name="Active" Type="Boolean" />
                <asp:Parameter Name="DateAdded" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="dlstMovie" DefaultValue="0" Name="film_id" PropertyName="SelectedValue" Type="Int64" />
                <asp:Parameter DefaultValue="True" Name="active" Type="Boolean" />
                <asp:ControlParameter ControlID="dlstCinema" DefaultValue="0" Name="cinema_id" PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ScreenId" Type="Int64" />
                <asp:Parameter Name="FilmId" Type="Int64" />
                <asp:Parameter Name="StartTime" Type="DateTime" />
                <asp:Parameter Name="EndTime" Type="DateTime" />
                <asp:Parameter Name="CostPerSeat" Type="Decimal" />
                <asp:Parameter Name="Active" Type="Boolean" />
                <asp:Parameter Name="DateAdded" Type="DateTime" />
                <asp:Parameter Name="Original_Id" Type="Int64" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</asp:Content>
