<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 4/27/2020  Eric       Initial deployment of Borrowers page.                 --%>
<%-- *************************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrowers.aspx.cs" Inherits="DiskInv.Borrowers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Borrowers</h1>
    <p>Please enter borrower information and click Submit.</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
        <asp:TextBox ID="txtFirst" runat="server">First Name</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirst" ErrorMessage="First name is required." InitialValue="First Name" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirst" Display="Dynamic" ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="txtLast" runat="server">Last Name</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLast" Display="Dynamic" ErrorMessage="Last name is required." InitialValue="Last Name"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLast" Display="Dynamic" ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="txtPhone" runat="server">999-999-9999</asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Use this format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone number is required."></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Please enter a valid phone number." InitialValue="999-999-9999"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </p>
    <p>
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
    </p>
</asp:Content>
