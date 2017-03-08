<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="QACinemasWebsite.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>

        function ValidateEmail() {
            var check = true
            var inputText = document.getElementById("ContentPlaceHolder1_textBoxEmail");
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (inputText.value.match(mailformat)) {
                check = true;
            }
            else {
                alert("You have entered an invalid email address!");
                inputText.focus();
                check = false;
            }

            return check;
        }
    </script>

    <form class="form-horizontal" onsubmit="return ValidateEmail()" data-toggle="validator" role="form" runat="server">


        <fieldset>
            <!-- Form Name -->
            <legend>Register</legend>

            <!-- First name input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxFirstN">First Name</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxFirstN" name="textBoxFirstN" class="form-control input-md" required="" runat="server"></asp:TextBox>

                </div>
            </div>

            <!-- Last name input-->
            <div class="form-group has-feedback">
                <label class="col-md-4 control-label" for="textBoxLastN">Last Name</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxLastN" name="textBoxLastN" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Email input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxEmail">Email</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxEmail" name="textBoxEmail"  placeholder="Email address" class="form-control input-md" required="" runat="server" OnTextChanged="textBoxEmail_TextChanged" />
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                    <div class="help-block with-errors">Hey look, this one has feedback icons!</div>
                </div>
            </div>

            <!-- Username input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxUsername">Username</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxUsername" name="textBoxUsername" placeholder="username" class="form-control input-md" required="" runat="server" OnTextChanged="textBoxUsername_TextChanged"></asp:TextBox>
                    <span class="help-block">Enter a unique username</span>
                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxPassword">New Password</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxPassword" name="textBoxPassword" type="password" placeholder="Enter new password" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Re enter Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxRePassword">Repeat password</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxRePassword" name="textBoxRePassword" type="password" placeholder="Re-Enter Password" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- password with validator-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxRePassword">Repeat password</label>
                <div class="col-md-3">
                    <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required="required" />
                    <div class="help-block">Minimum of 6 characters</div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxRePassword">Repeat password</label>
                <div class="col-md-3">
                    <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required="required" />
                    <div class="help-block with-errors"></div>
                </div>
            </div>

            <!-- Phone number input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxPhonNo">Phone Number</label>
                <div class="col-md-3">
                    <asp:TextBox ID="textBoxPhonNo" type="number" name="textBoxPhonNo" class="form-control input-md" runat="server"></asp:TextBox>
                </div>
            </div>

        </fieldset>
        <fieldset>
            <legend>Address</legend>

            <!-- PostCode input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxAPost">PostCode</label>
                <div class="col-md-2">
                    <asp:TextBox ID="textBoxAPost" name="textBoxAPost" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Address Line 1 input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxALine1">Line 1</label>
                <div class="col-md-4">
                    <asp:TextBox ID="textBoxALine1" name="textBoxALine1" class="form-control input-md " required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Address Line 2 input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxALine2">Line 2</label>
                <div class="col-md-4">
                    <asp:TextBox ID="textBoxALine2" name="textBoxALine2" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- City Region input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxACity">Region</label>
                <div class="col-md-4">
                    <asp:TextBox ID="textBoxACity" name="textBoxACity" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Address Region input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textBoxARegion">Region</label>
                <div class="col-md-4">
                    <asp:TextBox ID="textBoxARegion" name="textBoxARegion" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Address Country input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="textACountry">Country</label>
                <div class="col-md-4">
                    <asp:TextBox ID="textBoxACountry" name="textBoxACountry" class="form-control input-md" required="" runat="server"></asp:TextBox>
                </div>
            </div>

            <!-- Select Country -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="DropDownCountry">Country</label>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownCountry" name="DropDownCountry" class="form-control" runat="server"></asp:DropDownList>

                </div>
            </div>

            <!-- Register Button -->
            <div class="form-group">
                <div class="col-md-4 pull-right">
                    <asp:Button ID="textBoxRegister" type="submit" name="textBoxRegister" class="btn btn-primary" runat="server" Text="Register" OnClick="textBoxRegister_Click" />
                </div>
            </div>
        </fieldset>

    </form>


</asp:Content>
