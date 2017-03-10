<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="QACinemasWebsite.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>

        function ValidateEmail() {
            //var check = true
            //var inputText = document.getElementById("ContentPlaceHolder1_textBoxEmail");
            //var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            //if (inputText.value.match(mailformat)) {
            //    check = true;
            //}
            //else {
            //    alert("You have entered an invalid email address!");
            //    inputText.focus();
            //    check = false;
            //}

            //return check;
            return true;
        }
    </script>

    <div class="container">
        <h3>Register New Account</h3>
    </div>

    <div id="alertcomponent" class="alert" runat="server" visible="false">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4><span id="alertheader" runat="server">generic_header</span></h4>
        <span id="alertbody" runat="server">generic_body</span>
    </div>

    <form class="form-horizontal" onsubmit="return ValidateEmail()" data-toggle="validator" role="form" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default" id="accountpanel">
                        <h4 class="panel-heading">Account</h4>
                        <div class="panel-body">
                            <fieldset>
                                <!-- First name input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxFirstN">First Name</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxFirstN" name="textBoxFirstN" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Last name input-->
                                <div class="form-group has-feedback">
                                    <label class="col-md-3 control-label" for="textBoxLastN">Last Name</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxLastN" name="textBoxLastN" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Email input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxEmail">Email</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxEmail" name="textBoxEmail" placeholder="" class="form-control input-md" required="" runat="server" OnTextChanged="textBoxEmail_TextChanged" />
                                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <!-- Username input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxUsername">Username</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxUsername" name="textBoxUsername" placeholder="" class="form-control input-md" required="" runat="server" OnTextChanged="textBoxUsername_TextChanged"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxPassword">Password</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxPassword" name="textBoxPassword" type="password" placeholder="" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Re enter Password input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxPassword"></label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="inputPasswordConfirm" name="inputPasswordConfirm" type="password" data-match-error="Whoops, these don't match" data-match="#inputPassword" placeholder="Repeat" class="form-control input-md" required="required" runat="server"></asp:TextBox>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <!-- Phone number input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxPhonNo">Phone Number</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxPhonNo" type="number" name="textBoxPhonNo" class="form-control input-md" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <h4 class="panel-heading">Address</h4>
                        <div class="panel-body">
                            <fieldset>

                                <!-- PostCode input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxAPost">PostCode</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxAPost" name="textBoxAPost" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Address Line 1 input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxALine1">Line 1</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxALine1" name="textBoxALine1" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Address Line 2 input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxALine2">Line 2</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxALine2" name="textBoxALine2" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Address Line 2 input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxACity">City</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxACity" name="textBoxACity" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Address Region input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textBoxARegion">Region</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxARegion" name="textBoxARegion" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Address Country input-->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="textACountry">Country</label>
                                    <div class="col-md-7">
                                        <asp:TextBox ID="textBoxACountry" name="textBoxACountry" class="form-control input-md" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <!-- Select Country -->
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="DropDownCountry">Country</label>
                                    <div class="col-md-7">
                                        <asp:DropDownList ID="DropDownCountry" name="DropDownCountry" class="form-control" runat="server"></asp:DropDownList>

                                    </div>
                                </div>

                                <!-- Register Button -->
                                <div class="form-group ">
                                    <div class="col-md-12 center-block">
                                        <asp:Button ID="textBoxRegister" type="submit" name="textBoxRegister" CssClass="btn btn-primary center-block" runat="server" Text="  Register  " OnClick="textBoxRegister_Click" />
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</asp:Content>
