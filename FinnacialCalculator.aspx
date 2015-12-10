<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinnacialCalculator.aspx.cs" Inherits="FinnacialCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img alt="Murach" src="Images/Murach_image.jpg" style="height: 238px; width: 387px" /><br />
        <h1 style="color: #0000FF">401K Future Value Calculator</h1>
        <table>
            <tr>
                <td>Monthly investment</td> <td>&nbsp;</td>
                <td><asp:DropDownList ID="ddlMonthlyInvestmnet" runat="server" Width="106px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Annual interest rate</td> <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Interest rate required" ControlToValidate="txtInterestRate" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Interest rate must range from 1 to 20" ControlToValidate="txtInterestRate" MaximumValue="20" MinimumValue="1"></asp:RangeValidator>
                </td>
                <td><asp:TextBox ID="txtInterestRAte" runat="server" Width="100px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Number of years</td> <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Number of years is required" ControlToValidate="txtYears" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Years must range from 1 to 45" ControlToValidate="txtYears" MaximumValue="45" MinimumValue="1"></asp:RangeValidator>
                </td>
                <td><asp:TextBox ID="txtYears" runat="server" Width="100px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Future Value</td> <td>&nbsp;</td>
                <td><asp:Label ID="lblFutureValue" runat="server" Font-Bold="true"></asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100px" OnClick="btnCalculate_Click"/></td>  <td>&nbsp;</td>
                <td><asp:Button ID="btnClear" runat="server" Text="Clear" Width="100px" OnClick="btnClear_Click" CausesValidation="false" /></td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
