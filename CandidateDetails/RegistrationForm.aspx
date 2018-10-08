﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4><strong>Personal Details</strong></h4>
            <table class="alignment">
                <tr>
                    <td>
                        <asp:Label Text="First Name" ID="lblFirstName" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="200px" />
                        <%--<asp:Label Text="" ID="lblError" ForeColor="Red" runat="server" />--%>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvFirstName" ErrorMessage="Pleas Enter First Name" ControlToValidate="txtFirstName" ClientIDMode="Static"
                            CssClass="ErrorMessage" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="Last Name" ID="lblLastName" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName"  runat="server" Width="200px" />
                        <br />
                        <asp:RequiredFieldValidator ID="rfvLastName" ErrorMessage="Pleas Enter Last Name" ControlToValidate="txtLastName" ClientIDMode="Static"
                            CssClass="ErrorMessage" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email ID" ID="lblEmailID" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailID" runat="server" Width="200px" />
                        <br />
                        <asp:RequiredFieldValidator ID="rfvEmailID" ErrorMessage="Please Enter Email ID" ControlToValidate="txtEmailID" ClientIDMode="Static" CssClass="ErrorMessage" runat="server" />
                        <asp:RegularExpressionValidator ID="revEmailID" ErrorMessage="Please Enter Correct Email Format"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmailID" ClientIDMode="Static" CssClass="ErrorMessage" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="Alternate Email ID" ID="lblAlternateEmailID" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtAlternateEmailID" runat="server" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Candidate Status" ID="lblCandidateStatus" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCandidateStatus" runat="server" Width="200px">
                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem> 
                            <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                            <asp:ListItem Text="Placed in Full Time Role" Value="Placed in Full Time Role"></asp:ListItem> 
                            <asp:ListItem Text="Placed in Contract Role" Value="Placed in Contract Role"></asp:ListItem>
                            <asp:ListItem Text="Bounced" Value="Bounced"></asp:ListItem> 
                            <asp:ListItem Text="Email Marked as Spam" Value="Email Marked as Spam"></asp:ListItem>
                            <asp:ListItem Text="Spam Trap" Value="Spam Trap"></asp:ListItem> 
                            <asp:ListItem Text="EmailOptOut" Value="EmailOptOut"></asp:ListItem>
                            <asp:ListItem Text="GDPR OptOut" Value="GDPR OptOut"></asp:ListItem>
                        </asp:DropDownList>                      
                    </td>
                    <td>
                        <asp:Label Text="Phone Home" ID="lblPhoneHome" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneHome" runat="server" Width="200px" />
                        <br />
                        <asp:RequiredFieldValidator ID="rfvPhoneHome" ErrorMessage="Pleas Enter Phone Home" ClientIDMode="Static" ControlToValidate="txtPhoneHome" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression:

                        123-456-7890
                        123 456-7890
                        123-456 7890
                        (123)-456-7890
                        123 456 7890--%>
                        <asp:RegularExpressionValidator ID="revPhoneHome" ErrorMessage="Please Enter 10 Digits US Number Only" ClientIDMode="Static" ControlToValidate="txtPhoneHome"
                            ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression:

                        1444-555-1234
                        1-444-555-1234
                        14325678901
                        1(123)456-7890
                        +1 246.555-8888
                        +1 (123)456-7890
                        +1(123)456-7890
                        <asp:RegularExpressionValidator ErrorMessage="Please Enter 10 Digits US Number Only With US Country Code 1 or +1" ControlToValidate="txtPhoneHome"
                            ValidationExpression="^/[+]?[0-9]{0,1}[-. ]?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/" CssClass="ErrorMessage" runat="server" />--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Phone Cell" ID="lblPhoneCell" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneCell" runat="server" Width="200px" />
                        <br />
                        <asp:RequiredFieldValidator ID="rfvPhoneCell" ErrorMessage="Pleas Enter Phone Cell" ClientIDMode="Static" ControlToValidate="txtPhoneCell" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression: 

                        123-456-7890
                        123 456-7890
                        123-456 7890
                        (123)-456-7890
                        123 456 7890--%>
                        <asp:RegularExpressionValidator ID="revPhoneCell" ErrorMessage="Please Enter 10 Digits US Number Only" ClientIDMode="Static" ControlToValidate="txtPhoneCell"
                            ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression:

                        1444-555-1234
                        1-444-555-1234
                        14325678901
                        1(123)456-7890
                        +1 246.555-8888
                        +1 (123)456-7890
                        +1(123)456-7890
                        <asp:RegularExpressionValidator ErrorMessage="Please Enter 10 Digits US Number Only With US Country Code 1 or +1" ControlToValidate="txtPhoneHome"
                            ValidationExpression="^/[+]?[0-9]{0,1}[-. ]?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/" CssClass="ErrorMessage" runat="server" />--%>
                    </td>
                    <td>
                        <asp:Label Text="Phone Work" ID="lblPhoneWork" runat="server" />
                        <asp:Label Text="*" ForeColor="Red" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneWork" runat="server" Width="200px" />
                        <br />
                        <asp:RequiredFieldValidator ID="rfvPhoneWork" ErrorMessage="Pleas Enter Phone Work" ClientIDMode="Static" ControlToValidate="txtPhoneWork" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression:

                        123-456-7890
                        123 456-7890
                        123-456 7890
                        (123)-456-7890
                        123 456 7890--%>
                        <asp:RegularExpressionValidator ID="revPhoneWork" ErrorMessage="Please Enter 10 Digits US Number Only" ControlToValidate="txtPhoneWork"
                            ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ClientIDMode="Static" CssClass="ErrorMessage" runat="server" />
                        <%--Valid phone number series for the expression:

                        1444-555-1234
                        1-444-555-1234
                        14325678901
                        1(123)456-7890
                        +1 246.555-8888
                        +1 (123)456-7890
                        +1(123)456-7890
                        <asp:RegularExpressionValidator ErrorMessage="Please Enter 10 Digits US Number Only With US Country Code 1 or +1" ControlToValidate="txtPhoneHome"
                            ValidationExpression="^/[+]?[0-9]{0,1}[-. ]?\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/" CssClass="ErrorMessage" runat="server" />--%>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Address 1" ID="lblAddress1" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress1" runat="server" Width="200px" />
                    </td>
                    <td>
                        <asp:Label Text="Address 2" ID="lblAddress2" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress2" runat="server" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Country" ID="lblCountry" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server">                            
                        </asp:DropDownList>
                        <asp:HiddenField id="hdnCountryCode" runat="server" />
                        <asp:HiddenField id="hdnCountryValue" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="State" ID="lblState" runat="server" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server">
                            <asp:ListItem Text="Select a State" />
                        </asp:DropDownList>
                        <asp:HiddenField id="hdnStateID" runat="server" />
                        <asp:HiddenField id="hdnStateName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="City" ID="lblCity" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Width="200px" />
                    </td>
                    <td>
                        <asp:Label Text="Zip Code"  ID="lblZipCode" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtZipCode" runat="server" Width="200px" />
                    </td> 
                </tr>
            </table>
            <asp:Button Text="Create" ID="btnCreate" OnClick="btnCreate_Click" OnClientClick="Validate()" runat="server" />
            <%--<asp:Label Text="" ID="lblMessage" ForeColor="#ff9933" runat="server" />
            <br />
            <asp:Label Text="" ID="lblDisplay" ForeColor="#ff9933" runat="server" />--%>
        </div>
    </form>
    <script>                   
        function onCountriesAjaxComplete(results) {
            if (results !== null) {
                var ddlCountry = $("#ddlCountry");
                ddlCountry.html('');
                var options = "<option value='-1'>Select</option>";
                for (var i = 0; i < results.length; i++) {
                    options += "<option value='" + results[i].Code + "'>" + results[i].Value + "</option>";
                }
                ddlCountry.html(options);                
            }
        }
        $("#ddlCountry").change(function () {
            var selectedOption = $("#ddlCountry :selected");
            var countryCode = selectedOption.val();
            var countryValue = selectedOption.text();
            var hdnCountryCode = $('#hdnCountryCode');
            var hdnCountryValue = $('#hdnCountryValue');
            hdnCountryCode.val(countryCode);
            hdnCountryValue.val(countryValue);
            getStates(countryCode);
        });
        function onStatesAjaxComplete(results) {
            if (results !== null) {
                var ddlStates = $("#ddlState");
                ddlStates.html('');
                var options = "<option value='-1'>Select</option>";
                for (var i = 0; i < results.length; i++) {
                    options += "<option value='" + results[i].StateID + "'>" + results[i].StateName + "</option>";
                }
                ddlStates.html(options);
            }
        }
        function getCountries() {
            $.ajax({
                type: "GET",
                url: "/Ajax/LookupAjaxService.asmx/GetCountries",
                data: "",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    onCountriesAjaxComplete(data.d);
                }
            });
        }       
        function getStates(countryId) {
            $.ajax({
                type: "GET",
                url: "/Ajax/LookupAjaxService.asmx/GetStates?countryId=" + countryId,
                data: "",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    onStatesAjaxComplete(data.d);
                }
            });
        }

        $("#ddlState").change(function () { 
              var selectedOption = $("#ddlState :selected");
             var stateID = selectedOption.val();
             var stateName = selectedOption.text();
            var hdnStateID = $('#hdnStateID');
            var hdnStateName = $('#hdnStateName');
            hdnStateID.val(stateID);
            hdnStateName.val(stateName);
        });
    </script>
    <script>
        function Validate() {
            //var txtFirstName = document.getElementById("txtFirstName");
            //var lblError = document.getElementById("lblError");
            //if (txtFirstName.value == "") {
            //    lblError.innerText = "Please enter First Name";
            //    txtFirstName.focus();
            //    return false;
            //}
            var rfvFirstName = document.getElementById("rfvFirstName");
            var rfvLastName = document.getElementById("rfvLastName");
            var rfvEmailID = document.getElementById("rfvEmailID");
            var revEmailID = document.getElementById("revEmailID");
            var rfvPhoneHome = document.getElementById("rfvPhoneHome");
            var revPhoneHome = document.getElementById("revPhoneHome");
            var rfvPhoneCell = document.getElementById("rfvPhoneCell");
            var revPhoneCell = document.getElementById("revPhoneCell");
            var rfvPhoneWork = document.getElementById("rfvPhoneWork");
            var revPhoneWork = document.getElementById("revPhoneWork");
            ValidatorValidate(rfvFirstName);
            ValidatorValidate(rfvLastName);
            ValidatorValidate(rfvEmailID);
            ValidatorValidate(revEmailID);
            ValidatorValidate(rfvPhoneHome);
            ValidatorValidate(revPhoneHome);
            ValidatorValidate(rfvPhoneCell);
            ValidatorValidate(revPhoneCell);
            ValidatorValidate(rfvPhoneWork);
            ValidatorValidate(revPhoneWork);
        }
        //function validateUserName() {
        //    var lblError = document.getElementById("lblError");
        //    lblError.innerText = "";
        //}
    </script>
</body>
</html>