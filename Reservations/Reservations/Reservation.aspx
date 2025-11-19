<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="Reservations.Reservations.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Inns and Suites Reservations</title>
</head>
<body>
    <form id="frmReservations" runat="server">
       <p align="center"><img src="images/logo.png"/></p>
        
        <h1>Reservation Request</h1>

        <p><font color="red">* means that the field is required</font></p>

        <h2>Request Data</h2>

        <table>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>Arrival Date:</td>
                <td width="5">&nbsp;</td>
                <td> <asp:TextBox ID="txtArrivalDate" Width="200px" runat="server"></asp:TextBox></td> <!-- TextMode="Date" doesn't work for me -->
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valArrivalDate" runat="server" ErrorMessage="Please select an arrival date." Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtArrivalDate" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>Departure Date:</td>
                <td width="5">&nbsp;</td>
                <td> <asp:TextBox ID="txtDepartureDate" Width="200px" runat="server"></asp:TextBox></td> <!-- TextMode="Date" doesn't work for me -->
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valDepartureDate" runat="server" ErrorMessage="Please select a departure date." Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDepartureDate" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>Number of people:</td>
                <td width="5">&nbsp;</td>
                <td><asp:DropDownList ID="lstNumberOfPeople" Width="208px" runat="server">
                <asp:ListItem Text="1" Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="4"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                </asp:DropDownList> </td> 
                <td width="5">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td width="5">&nbsp;</td>
                <td>Bed Type:</td>
                <td width="5">&nbsp;</td>
                <td>
                    <asp:RadioButton ID="optKing" GroupName="BedType" Checked="true" Text="King" runat="server" />&nbsp;&nbsp;
                    <asp:RadioButton ID="optTwoQueen" GroupName="BedType" Text="Two Queen" runat="server" />&nbsp;&nbsp;
                    <asp:RadioButton ID="optQueen" GroupName="BedType" Text="Queen" runat="server" />
                </td> 
                <td width="5">&nbsp;</td>
                <td></td>
            </tr>
        </table>
        <br />
        <h2>Special Request</h2>
        <p><asp:TextBox ID="txtSpecialRequests" TextMode="MultiLine" Rows="10" Columns="45" runat="server"></asp:TextBox></p>
        
        <h2>Contact Information</h2>
        
        <table>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td>First Name:</td>
                <td width="5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtFirstName" Width="200px" runat="server"></asp:TextBox></td>
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valFirstName" runat="server" ErrorMessage="Please Enter a first name." Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtFirstName" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td>Last Name:</td>
                <td width="5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtLastName" Width="200px" runat="server"></asp:TextBox></td>
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valLastName" runat="server" ErrorMessage="Please Enter a last name." Display="Dynamic" SetFocusOnError="true" ControlToValidate="TxtLastName" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td>Email Address:</td>
                <td width="5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtEmail" Width="200px" runat="server"></asp:TextBox></td>
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="ValEmail" runat="server" ErrorMessage="Please Enter a valid Email Address." Display="Dynamic" SetFocusOnError="true" ControlToValidate="TxtEmail" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><img src="images/required.gif" /></td>
                <td>Telephone Number:</td>
                <td width="5">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtTelephoneNumber" Width="200px" runat="server"></asp:TextBox></td>
                <td width="5">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Use this format: 999-999-9999" Display="Dynamic" SetFocusOnError="true" ControlToValidate="TxtTelephoneNumber" ></asp:RequiredFieldValidator></td>
            </tr>
        </table>
        <p><asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="SUBMIT" />&nbsp;&nbsp;
       <asp:LinkButton ID="btnClear" OnClick="btnClear_Click" runat="server">CLEAR</asp:LinkButton></p>
    </form>
</body>
</html>
