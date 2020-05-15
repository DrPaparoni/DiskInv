<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 4/27/2020  Eric       Initial deployment of CDs page.                       --%>
<%-- 5/01/2020  Eric       Added ListView to add, upd & del disks.               --%>
<%-- 5/14/2020  Eric       Changed table stylings to match the rest of the site  --%>
<%-- *************************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CDs.aspx.cs" Inherits="DiskInv.CDs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <H1>
        CDs</H1>
<p>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CD_ID" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFFFFF; color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CD_nameLabel" runat="server" Text='<%# Eval("CD_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="typeIDLabel" runat="server" Text='<%# Eval("typeID") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="CD_IDLabel1" runat="server" Text='<%# Eval("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CD_nameTextBox" runat="server" Text='<%# Bind("CD_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="typeIDTextBox" runat="server" Text='<%# Bind("typeID") %>' />
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
                        <asp:TextBox ID="CD_IDTextBox" runat="server" Text='<%# Bind("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CD_nameTextBox" runat="server" Text='<%# Bind("CD_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="typeIDTextBox" runat="server" Text='<%# Bind("typeID") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#E0FFFF; color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CD_nameLabel" runat="server" Text='<%# Eval("CD_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="typeIDLabel" runat="server" Text='<%# Eval("typeID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">CD_ID</th>
                                    <th runat="server">CD_name</th>
                                    <th runat="server">Release_Date</th>
                                    <th runat="server">Status_ID</th>
                                    <th runat="server">Genre_ID</th>
                                    <th runat="server">typeID</th>
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
                <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CD_nameLabel" runat="server" Text='<%# Eval("CD_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Eval("Release_Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="typeIDLabel" runat="server" Text='<%# Eval("typeID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryEWConnectionString %>" SelectCommand="SELECT [CD_ID], [CD_name], [Release_Date], [Status_ID], [Genre_ID], [typeID] FROM [CD] ORDER BY [CD_name]" DeleteCommand="sp_del_CD" 
            InsertCommand="sp_ins_CD" 
            UpdateCommand="sp_upd_CD" DeleteCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="CD_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CD_ID" Type="Int32" />
                <asp:Parameter Name="CD_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Release_Date" />
                <asp:Parameter Name="Genre_ID" Type="Int32" />
                <asp:Parameter Name="Status_ID" Type="Int32" />
                <asp:Parameter Name="typeid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CD_ID" Type="Int32" />
                <asp:Parameter Name="CD_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Release_Date" />
                <asp:Parameter Name="Genre_ID" Type="Int32" />
                <asp:Parameter Name="Status_ID" Type="Int32" />
                <asp:Parameter Name="typeid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
