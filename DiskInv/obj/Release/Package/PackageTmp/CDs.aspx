<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 4/27/2020  Eric       Initial deployment of CDs page.                       --%>
<%-- 5/01/2020  Eric       Added ListView to add, upd & del disks.               --%>
<%-- *************************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CDs.aspx.cs" Inherits="DiskInv.CDs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <H1>
        <br />
        CDs</H1>
    <p>
        &nbsp;</p>
<p>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CD_ID" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
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
                        <asp:Label ID="TypeIDLabel" runat="server" Text='<%# Eval("TypeID") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #b200ff;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="CD_IDLabel1" runat="server" Text='<%# Eval("CD_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CD_nameTextBox" runat="server" Text='<%# Bind("CD_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CD_nameTextBox" ErrorMessage="Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Release_DateTextBox" ErrorMessage="Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Status_IDTextBox" ErrorMessage="Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Genre_IDTextBox" ErrorMessage="Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="TypeIDTextBox" runat="server" Text='<%# Bind("TypeID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TypeIDTextBox" ErrorMessage="Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="CD_IDTextBox" runat="server" Text='<%# Bind("CD_ID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="CD_IDTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="CD_nameTextBox" runat="server" Text='<%# Bind("CD_name") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="CD_nameTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="Release_DateTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="Status_IDTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="Genre_IDTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="TypeIDTextBox" runat="server" Text='<%# Bind("TypeID") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required" ControlToValidate="TypeIDTextBox" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
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
                        <asp:Label ID="TypeIDLabel" runat="server" Text='<%# Eval("TypeID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: black;">
                                    <th runat="server"></th>
                                    <th runat="server">CD_ID</th>
                                    <th runat="server">CD_name</th>
                                    <th runat="server">Release_Date</th>
                                    <th runat="server">Status_ID</th>
                                    <th runat="server">Genre_ID</th>
                                    <th runat="server">TypeID</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
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
                        <asp:Label ID="TypeIDLabel" runat="server" Text='<%# Eval("TypeID") %>' />
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
