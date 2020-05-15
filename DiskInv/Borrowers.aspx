<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 4/27/2020  Eric       Initial deployment of Borrowers page.                 --%>
<%-- 5/01/2020  Eric       Added update, ins, & del commands                     --%>
<%-- 5/14/2020  Eric       Changed table stylings to match the rest of the site  --%>
<%-- *************************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrowers.aspx.cs" Inherits="DiskInv.Borrowers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Borrowers</h1>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Borrower_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999; color: black;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_IDLabel1" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Borrower_Phone_NumberTextBox" runat="server" Text='<%# Bind("Borrower_Phone_Number") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Borrower_IDTextBox" runat="server" Text='<%# Bind("Borrower_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />

                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Borrower_Phone_NumberTextBox" runat="server" Text='<%# Bind("Borrower_Phone_Number") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">Borrower_ID</th>
                                    <th runat="server">lname</th>
                                    <th runat="server">fname</th>
                                    <th runat="server">Borrower_Phone_Number</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: black">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Borrower_Phone_NumberLabel" runat="server" Text='<%# Eval("Borrower_Phone_Number") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryEWConnectionString %>" DeleteCommand="sp_del_borrower" DeleteCommandType="StoredProcedure" InsertCommand="sp_ins_borrower" InsertCommandType="StoredProcedure" SelectCommand="SELECT [Borrower_ID], [lname], [fname], [Borrower_Phone_Number] FROM [Borrower] ORDER BY [lname], [fname]" UpdateCommand="sp_upd_borrower" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="Borrower_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Borrower_ID" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="Borrower_Phone_Number" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Borrower_ID" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="Borrower_Phone_Number" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </asp:Content>
