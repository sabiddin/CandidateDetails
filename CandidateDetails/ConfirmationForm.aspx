﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmationForm.aspx.cs" Inherits="ConfirmationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
            color: steelblue;
            text-align: left;
            font-family: Arial;
            font-size: large;
        }

        h1 {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Please Confirm Your Personal Details:</h1>
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" /></td>

                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" /></td>
                </tr>
                <tr>
                    <td>Email ID:</td>
                    <td>
                        <asp:Label ID="lblEmailID" runat="server" /></td>

                </tr>
                <tr>
                    <td>Alternate EmailID:</td>
                    <td>
                        <asp:Label ID="lblAlternateEmailID" runat="server" /></td>
                </tr>
                <tr>
                    <td>Candidate Status: </td>
                    <td>
                        <asp:Label ID="lblCandidateStatus" runat="server" /></td>

                </tr>
                <tr>
                    <td>Phone Home:</td>
                    <td>
                        <asp:Label ID="lblPhoneHome" runat="server" /></td>

                </tr>
                <tr>
                    <td>Phone Cell:</td>
                    <td>
                        <asp:Label ID="lblPhoneCell" runat="server" /></td>

                </tr>
                <tr>
                    <td>Phone Work:</td>
                    <td>
                        <asp:Label ID="lblPhoneWork" runat="server" /></td>

                </tr>
                <tr>
                    <td>Address 1:</td>
                    <td>
                        <asp:Label ID="lblAddress1" runat="server" /></td>

                </tr>
                <tr>
                    <td>Address 2:</td>
                    <td>
                        <asp:Label ID="lblAddress2" runat="server" /></td>

                </tr>
                <tr>
                    <td>Country:</td>
                    <td>
                        <asp:Label ID="lblCountry" runat="server" /></td>

                </tr>
                <tr>
                    <td>State: </td>
                    <td>
                        <asp:Label ID="lblState" runat="server" /></td>

                </tr>
                <tr>
                    <td>City: </td>
                    <td>
                        <asp:Label ID="lblCity" runat="server" /></td>

                </tr>
                <tr>
                    <td>Zip Code</td>
                    <td>
                        <asp:Label ID="lblZipCode" runat="server" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="" ID="lblConfirmMessage" runat="server" /></td>
                    <td>
                        <asp:RadioButtonList ID="rblConfirm" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>

                </tr>
                <tr>
                    <td colspan="2">
                         <asp:Button Text="Confirm" ID="btnConfirm" OnClick="btnConfirm_Click" runat="server" />
                    </td>
                </tr>
            </table>

           
        </div>
    </form>
</body>
</html>
