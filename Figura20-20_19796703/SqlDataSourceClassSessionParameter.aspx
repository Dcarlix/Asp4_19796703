<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlDataSourceClassSessionParameter.aspx.cs" Inherits="Figura20_20_19796703.SqlDataSourceClassSessionParameter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsListBoxProduct" runat="server" ConnectionString="<%$ConnectionStrings:SportsPlay %>" SelectCommand="SELECT ProductID, Product FROM Product WHERE CategoryID = @CategoryID ORDER BY Product;">
                <SelectParameters>
                    <asp:SessionParameter Direction="Input" Name="CategoryID" SessionField="intCategoryID" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="Product"></asp:Label>
			<br />
            <asp:ListBox ID="libProduct" runat="server" DataSourceID="sdsListBoxProduct" DataTextField="Product" DataValueField="ProductID" Rows="7"></asp:ListBox>
        </div>
    </form>
</body>
</html>
