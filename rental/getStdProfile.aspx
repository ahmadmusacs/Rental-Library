<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getStdProfile.aspx.cs" Inherits="getStdProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <div>
        Hi
        <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
            ItemPlaceholderID="itemPlaceHolder1">
            <LayoutTemplate>
                <table class="table table-striped">
                    <tr>
                        <th>
                            Student Details
                        </th>
                    </tr>
                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                    <tr>
                        <td colspan="4">
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
                    <%# Eval("roll") %>
                </td>
                <td>
                    <%# Eval("name") %>
                </td>
                <td>
                    <%#Eval("email") %>
                </td>
                <td>
                    <%#Eval("password") %>
                </td>

            </ItemTemplate>
        </asp:ListView>
    </div>

</body>
</html>
