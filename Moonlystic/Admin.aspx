﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Moonlystic.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administrator Page</h1>
    <p>p.s you forgot about vouchers</p>
    <div class="container">
        <div class="row">
            <div class="col-2">
                <div class="btn-group-vertical">
                    <asp:Button ID="btnCategory" runat="server" Text="Category" class="btn btn-primary" OnClick="btnCategory_Click"/>
                    <asp:Button ID="btnProducts" runat="server" Text="Products" class="btn btn-primary" OnClick="btnProducts_Click"/>
                    <asp:Button ID="btnUsers" runat="server" Text="Users" class="btn btn-primary" OnClick="btnUsers_Click"/>
                    <asp:Button ID="btnFAQ" runat="server" Text="FAQ" class="btn btn-primary" OnClick="btnFAQ_Click"/>
                    <asp:Button ID="btnHome" runat="server" Text="Home Page" class="btn btn-primary" OnClick="btnHome_Click"/>
                    <asp:Button ID="btnOrders" runat="server" Text="Orders" class="btn btn-primary" OnClick="btnOrders_Click"/>
                </div>
            </div>

            <!-- ------------------------------------------------------------------------------------------------------------------------ -->
            
            <div class="col-10">


                <asp:Panel ID="PanelCategory" runat="server">
                    <asp:GridView ID="GridViewCategory" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="categoryId" DataSourceID="sqlCat">
                        <Columns>
                            <asp:BoundField DataField="categoryId" HeaderText="categoryId" ReadOnly="True" SortExpression="categoryId" />
                            <asp:BoundField DataField="categoryName" HeaderText="categoryName" SortExpression="categoryName" />
                            <asp:BoundField DataField="categoryImg" HeaderText="categoryImg" SortExpression="categoryImg" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="sqlCat" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Category]"
                        InsertCommand="INSERT INTO [Category] ([categoryName]) VALUES (@categoryName)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtCatName" Name="categoryName" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>

                    <div class="m-2">
                        <asp:TextBox ID="txtCatName" runat="server" placeholder="Category Title" class="m-2"></asp:TextBox> <br />
                        <asp:FileUpload ID="fileCat" runat="server" class="m-2"/> <br />
                        <asp:Button ID="btnCatAdd" runat="server" Text="Add Category" OnClick="btnCatAdd_Click" class="m-2"/>
                    </div>

                </asp:Panel>


                <asp:Panel ID="PanelManageProducts" runat="server">
                    <p>Manage Products Panel</p>
                    <p>Not done property validations yet</p>
                    <asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="productId" DataSourceID="sqlProd">
                        <Columns>
                            <asp:BoundField DataField="productId" HeaderText="productId" ReadOnly="True" SortExpression="productId" />
                            <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                            <asp:BoundField DataField="productDesc" HeaderText="productDesc" SortExpression="productDesc" />
                            <asp:BoundField DataField="productImg" HeaderText="productImg" SortExpression="productImg" />
                            <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
                            <asp:BoundField DataField="productAmount" HeaderText="productAmount" SortExpression="productAmount" />
                            <asp:BoundField DataField="productDiscount" HeaderText="productDiscount" SortExpression="productDiscount" />
                            <asp:BoundField DataField="productCategory" HeaderText="productCategory" SortExpression="productCategory" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlProd" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Product]"
                        InsertCommand="INSERT INTO [Product] ([productName], [productDesc], [productPrice], [productAmount], [productDiscount], [productCategory]) 
                        VALUES (@productName, @productDesc, @productPrice, @productAmount, @productDiscount, @productCategory)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtProdName" Name="productName" Type="String" />
                            <asp:ControlParameter ControlID="txtProdDesc" Name="productDesc" Type="String" />
                            <asp:ControlParameter ControlID="txtProdPrice" Name="productPrice" Type="decimal" />
                            <asp:ControlParameter ControlID="txtProdAmount" Name="productAmount" Type="Int32" />
                            <asp:ControlParameter ControlID="txtProdDiscount" Name="productDiscount" Type="decimal" />
                            <asp:ControlParameter ControlID="ddlProdCat" Name="productCategory" Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>

                    <div class="m-2">
                        <asp:TextBox ID="txtprodName" runat="server" placeholder="Product Name" class="m-2"></asp:TextBox>
                        <asp:TextBox ID="txtprodDesc" runat="server" placeholder="Product Description" class="m-2"></asp:TextBox>
                        <asp:FileUpload ID="fileProdImg" runat="server" placeholder="Product Image" class="m-2"/>
                        <asp:TextBox ID="txtProdPrice" runat="server" placeholder="Product Price" class="m-2"></asp:TextBox>
                        <asp:TextBox ID="txtProdAmount" runat="server" placeholder="Product Amount" class="m-2"></asp:TextBox>
                        <asp:TextBox ID="txtProdDiscount" runat="server" placeholder="Product Discount" class="m-2"></asp:TextBox>
                        <asp:DropDownList ID="ddlProdCat" runat="server" OnSelectedIndexChanged="ddlProdCat_SelectedIndexChanged" DataSourceID="sqlCat" DataTextField="categoryName" DataValueField="categoryId" class="m-2"></asp:DropDownList> <br />
                        <asp:Button ID="btnProdAdd" runat="server" Text="Add Product" OnClick="btnProdAdd_Click" class="m-2" />
                    </div>

                </asp:Panel>


                <asp:Panel ID="PanelManageUsers" runat="server">
                    <p>Manage Users Panel</p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="userId" DataSourceID="sqlUsers" GridLines="Horizontal" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" ReadOnly="True" SortExpression="userId" />
                            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                            <asp:BoundField DataField="dateOfBirth" HeaderText="dateOfBirth" SortExpression="dateOfBirth" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" Visible="False" />
                            <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                            <asp:BoundField DataField="userImg" HeaderText="userImg" SortExpression="userImg" Visible="False" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" />
                            <asp:BoundField DataField="gameToken" HeaderText="gameToken" SortExpression="gameToken" />
                            <asp:BoundField DataField="checkInDays" HeaderText="checkInDays" SortExpression="checkInDays" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="sqlUsers" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Users]"
                        InsertCOmmand="INSERT INTO [Users] ([firstName], [lastName], [userName], [dateOfBirth], [email], [password], [userType], [status], [balance], [gameToken], [checkInDays])
                        VALUES (@firstName, @lastName, @userName, @dateOfBirth, @email, @password, @userType, @status, @balance, @gameToken, @checkInDays)">

                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtFirstName" Name="firstName" Type="String" />
                            <asp:ControlParameter ControlID="txtLastName" Name="lastName" Type="String" />
                            <asp:ControlParameter ControlID="txtUserName" Name="userName" Type="String" />
                            <asp:ControlParameter ControlID="txtDOB" Name="dateOfBirth" Type="String" />
                            <asp:ControlParameter ControlID="txtEmail" Name="email" Type="String" />
                            <asp:ControlParameter ControlID="txtuserType" Name="userType" Type="Int32" />
                            <asp:ControlParameter ControlID="txtBalance" Name="balance" Type="decimal" />
                            <asp:ControlParameter ControlID="txtgameToken" Name="gameToken" Type="Int32" />

                            <asp:Parameter DefaultValue="123" Name="password" Type="string" />
                            <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="checkInDays" Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>

                    <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtUserName" placeholder="User Name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtDOB" placeholder="Date Of Birth" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtuserType" placeholder="User Type" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtBalance" placeholder="Balance" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:TextBox ID="txtgameToken" placeholder="Game Token" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:Button ID="btnAdd" runat="server" Text="Add User" OnClick="btnAdd_Click" />
                    <!--some should be dropdowns, some should be in Calendar form-->
                </asp:Panel>
                

                <asp:Panel ID="PanelManageFAQ" runat="server">
                    <p>Manage FAQ Panel</p>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="faqId" DataSourceID="sqlFaq">
                        <Columns>
                            <asp:BoundField DataField="faqId" HeaderText="faqId" ReadOnly="True" SortExpression="faqId" />
                            <asp:BoundField DataField="faqTitle" HeaderText="faqTitle" SortExpression="faqTitle" />
                            <asp:BoundField DataField="faqDesc" HeaderText="faqDesc" SortExpression="faqDesc" />
                            <asp:BoundField DataField="faqVisible" HeaderText="faqVisible" SortExpression="faqVisible" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="sqlFaq" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Faq]"
                        InsertCommand="INSERT INTO [Faq] ([faqTitle], [faqDesc], [faqVisible]) VALUES (@faqTitle, @faqDesc, @faqVisible)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtFaqTitle" Name="faqTitle" Type="String" />
                            <asp:ControlParameter ControlID="txtFaqDesc" Name="faqDesc" Type="String" />
                            <asp:ControlParameter ControlID="chkFaqVisible" Name="faqVisible" Type="boolean" />

                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:TextBox ID="txtFaqTitle" runat="server" placeholder="FAQ Title"></asp:TextBox>
                    <asp:TextBox ID="txtFaqDesc" runat="server" placeholder="FAQ Description"></asp:TextBox> <br />
                    <asp:CheckBox ID="chkFaqVisible" runat="server" value="Visible" Checked="true"/><p>Visible</p> <br />
                    <p><% =faqVisible %></p>
                    <asp:Button ID="btnAddFaq" runat="server" Text="Add FAQ" OnClick="btnAddFaq_Click" />
                </asp:Panel>


                <asp:Panel ID="PanelManageHome" runat="server">
                    <p>Manage Home Page Panel</p>
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="carId" DataSourceID="sqlCar">
                        <Columns>
                            <asp:BoundField DataField="carId" HeaderText="carId" InsertVisible="False" ReadOnly="True" SortExpression="carId" />
                            <asp:BoundField DataField="carTitle" HeaderText="carTitle" SortExpression="carTitle" />
                            <asp:BoundField DataField="carDesc" HeaderText="carDesc" SortExpression="carDesc" />
                            <asp:BoundField DataField="carBanner" HeaderText="carBanner" SortExpression="carBanner" />
                            <asp:BoundField DataField="carShow" HeaderText="carShow" SortExpression="carShow" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="sqlCar" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Carousel]"
                        InsertCommand="INSERT INTO [Carousel] ([carTitle], [carDesc], [carShow]) VALUES (@carTitle, @carDesc, @carShow)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtCarTitle" Name="carTitle" Type="string" />
                            <asp:ControlParameter ControlID="txtcarDesc" Name="carDesc" Type="string" />
                            <asp:ControlParameter ControlID="chkCarShow" Name="carShow" Type="boolean" />
                        </InsertParameters>
                    </asp:SqlDataSource>

                    <div class="m-2">
                        <asp:TextBox ID="txtCarTitle" runat="server" placeholder="carousel title" class="m-2"></asp:TextBox> <br />
                        <asp:TextBox ID="txtCarDesc" runat="server" placeholder="carousel description" TextMode="MultiLine" class="m-2"></asp:TextBox> <br />
                        <asp:FileUpload ID="fuBanner" runat="server" class="m-2" /> <br />
                        <asp:CheckBox ID="chkCarShow" runat="server" text="Show" class="m-2"/> <br />
                        <asp:Button ID="btnAddCar" runat="server" Text="Add to Carousel" OnClick="btnAddCar_Click" class="m-2" />
                    </div>

                </asp:Panel>


                <asp:Panel ID="PanelManageOrders" runat="server">
                    <p>Manage Orders Panel</p>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="cartId" DataSourceID="sqlCart">
                        <Columns>
                            <asp:BoundField DataField="cartId" HeaderText="cartId" InsertVisible="False" ReadOnly="True" SortExpression="cartId" />
                            <asp:BoundField DataField="productId" HeaderText="productId" SortExpression="productId" />
                            <asp:BoundField DataField="userId" HeaderText="userId" SortExpression="userId" />
                            <asp:BoundField DataField="orderAmount" HeaderText="orderAmount" SortExpression="orderAmount" />
                            <asp:CheckBoxField DataField="hasPaid" HeaderText="hasPaid" SortExpression="hasPaid" />
                            <asp:BoundField DataField="cartPrice" HeaderText="cartPrice" SortExpression="cartPrice" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="sqlCart" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
                        SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>

                </asp:Panel>


            </div>
        </div>
    </div>
</asp:Content>

