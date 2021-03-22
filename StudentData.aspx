<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentData.aspx.cs" Inherits="Assignment.StudentData" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:100%">
            <dx:ASPxGridView ID="studentDataGrid" Width="100%" runat="server" AutoGenerateColumns="False" EnableTheming="True" Theme="Office365" DataSourceID="SqlDataSource1" KeyFieldName="OrderID" OnCommandButtonInitialize="studentDataGrid_CommandButtonInitialize">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowHeaderFilterButton="true" />
                <SettingsPopup>
                    <FilterControl AutoUpdatePosition="False"></FilterControl>
                </SettingsPopup>
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="3">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="4">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataSpinEditColumn FieldName="Freight" VisibleIndex="6">
                        <PropertiesSpinEdit DisplayFormatString="c">
                        </PropertiesSpinEdit>
                    </dx:GridViewDataSpinEditColumn>
                    <dx:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([CustomerID], [RequiredDate], [OrderDate], [ShippedDate], [Freight], [ShipName], [ShipCity], [ShipCountry], [ShipAddress]) VALUES (@CustomerID, @RequiredDate, @OrderDate, @ShippedDate, @Freight, @ShipName, @ShipCity, @ShipCountry, @ShipAddress)" SelectCommand="SELECT [OrderID], [CustomerID], [RequiredDate], [OrderDate], [ShippedDate], [Freight], [ShipName], [ShipCity], [ShipCountry], [ShipAddress] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [RequiredDate] = @RequiredDate, [OrderDate] = @OrderDate, [ShippedDate] = @ShippedDate, [Freight] = @Freight, [ShipName] = @ShipName, [ShipCity] = @ShipCity, [ShipCountry] = @ShipCountry, [ShipAddress] = @ShipAddress WHERE [OrderID] = @OrderID">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="String" />
                    <asp:Parameter Name="RequiredDate" Type="DateTime" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="ShippedDate" Type="DateTime" />
                    <asp:Parameter Name="Freight" Type="Decimal" />
                    <asp:Parameter Name="ShipName" Type="String" />
                    <asp:Parameter Name="ShipCity" Type="String" />
                    <asp:Parameter Name="ShipCountry" Type="String" />
                    <asp:Parameter Name="ShipAddress" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="String" />
                    <asp:Parameter Name="RequiredDate" Type="DateTime" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="ShippedDate" Type="DateTime" />
                    <asp:Parameter Name="Freight" Type="Decimal" />
                    <asp:Parameter Name="ShipName" Type="String" />
                    <asp:Parameter Name="ShipCity" Type="String" />
                    <asp:Parameter Name="ShipCountry" Type="String" />
                    <asp:Parameter Name="ShipAddress" Type="String" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
