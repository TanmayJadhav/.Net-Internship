<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Product_List.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="row justify-content-center">Update Product</h1>
        <div class="row justify-content-center">
            <div class="col-5">
            </div>
        </div>
    </div>
    <asp:GridView runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True">

        <Columns>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name"></asp:BoundField>
            <asp:BoundField DataField="product_stock" HeaderText="product_stock" SortExpression="product_stock"></asp:BoundField>
            <asp:BoundField DataField="product_category" HeaderText="product_category" SortExpression="product_category"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:product_detailsConnectionString %>' DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([product_name], [product_stock], [product_category]) VALUES (@product_name, @product_stock, @product_category)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [product_name] = @product_name, [product_stock] = @product_stock, [product_category] = @product_category WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="product_stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="product_category" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="product_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="product_stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="product_category" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
