<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Product_List.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1 class="row justify-content-center">Add Product</h1>
        <div class="row justify-content-center">
            
            <div class="col-5">
                <div class="form-group">
                    <asp:Label Text="Product Name"  runat="server"  />
                    <asp:TextBox runat="server"  ID="ProductName" CssClass="form-control" />
                    <asp:RequiredFieldValidator ErrorMessage="*Required" ControlToValidate="ProductName" runat="server" CssClass="small text-danger" />
                </div>
                <div class="form-group">
                    <asp:Label Text="Quantity"  runat="server"  />
                    <asp:TextBox TextMode="Number" ID="Quantity" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ErrorMessage="*Required" ControlToValidate="Quantity" runat="server" CssClass="small text-danger" />
                </div>
                <div class="form-group">
                    <asp:Label Text="Category"  runat="server"   />
                    <asp:DropDownList runat="server"  ID="Category" CssClass="form-control">
                        <asp:ListItem Text="-Select One-" Value="-Select One-" />
                        <asp:ListItem Text="Electronics" Value="Electronics" />
                        <asp:ListItem Text="Food" Value="Food" />
                        <asp:ListItem Text="Clothing" Value="Clothing" />
                    </asp:DropDownList>
                    <asp:CompareValidator ErrorMessage="Please select an option" ControlToValidate="Category" ValueToCompare="-Select One-" Operator="NotEqual" runat="server" />
                </div>
                
                <asp:Button Text="Add" runat="server" ID="Add"  OnClick="Add_Click"  CssClass="btn btn-primary"/>
            </div>
        </div>
    </div>

</asp:Content>
