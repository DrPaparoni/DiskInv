<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 4/27/2020  Eric       Initial deployment of Artists page.                   --%>
<%-- 5/01/2020  Eric       Added ListView to allow add, edit & update of artists.--%>
<%-- 5/14/2020  Eric       Changed table stylings to match the rest of the site  --%>
<%-- *************************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="DiskInv.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Artists</h1>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Artist_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF; color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Artist_Type_IDLabel" runat="server" Text='<%# Eval("Artist_Type_ID") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Artist_IDLabel1" runat="server" Text='<%# Eval("Artist_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Artist_Type_IDTextBox" runat="server" Text='<%# Bind("Artist_Type_ID") %>' />
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Artist_IDTextBox" runat="server" Text='<%# Bind("Artist_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Artist_Type_IDTextBox" runat="server" Text='<%# Bind("Artist_Type_ID") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF; color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Artist_Type_IDLabel" runat="server" Text='<%# Eval("Artist_Type_ID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">Artist_ID</th>
                                    <th runat="server">fname</th>
                                    <th runat="server">lname</th>
                                    <th runat="server">Artist_Type_ID</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: black;">
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
                <tr style="background-color: #E2DED6; font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Artist_Type_IDLabel" runat="server" Text='<%# Eval("Artist_Type_ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryEWConnectionString %>" DeleteCommand="sp_del_artist" DeleteCommandType="StoredProcedure" InsertCommand="sp_ins_artist" InsertCommandType="StoredProcedure" SelectCommand="SELECT [Artist_ID], [fname], [lname], [Artist_Type_ID] FROM [Artist] ORDER BY [fname], [lname]" UpdateCommand="sp_upd_artist" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
