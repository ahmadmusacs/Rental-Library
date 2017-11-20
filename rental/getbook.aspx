<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getbook.aspx.cs" Inherits="getbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
                ItemPlaceholderID="itemPlaceHolder1">
                <LayoutTemplate>
                    <table class="table table-striped">
                        <tr>
                           
                            <th><b>Name</b>
                            </th>
                            <th><b>Writer's Name</b>
                            </th>

                        </tr>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        <tr>
                            <td colspan="3">
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="10">
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>

                    <td>
                        <%# Eval("bookname") %>
                    </td>
                    <td>
                        <%#Eval("writername") %>
                    </td>

                </ItemTemplate>
            </asp:ListView>
            <asp:ListView ID="ListView2" runat="server" GroupPlaceholderID="groupPlaceHolder2"
                ItemPlaceholderID="itemPlaceHolder2">
                <LayoutTemplate>
                    <table class="table table-striped">
                        <tr>
                            <th><b>Title</b>
                            </th>
                            <th><b>Student Name</b>
                            </th>
                            <th><b>Student Roll</b>
                            </th>
                            <th><b>Thesis supervisor</b>
                            </th>

                        </tr>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder2"></asp:PlaceHolder>
                        <tr>
                            <td colspan="5">
                                <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView2" PageSize="10">
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder2"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>

                    <td>
                        <%# Eval("title") %>
                    </td>
                    <td>
                        <%# Eval("stdname") %>
                    </td>
                    <td>
                        <%#Eval("stdroll") %>
                    </td>
                    <td>
                        <%#Eval("supervisor") %>
                    </td>

                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
