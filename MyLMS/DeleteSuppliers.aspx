<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="DeleteSuppliers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
        <section class="content">
            <div class="container-fluid">
            <div class="row">  
                <div class="col-md-12">
                    <div class="box box-primary">
                         <div class="box-header with-border">
                            <h3 class="box-title">Delete Suppliers</h3>
                            </div>
                    
                         <div class="box-body">
                             <div class="table-responsive">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1"
                         GroupPlaceholderID="groupPlaceHolder" >
                    <AlternatingItemTemplate>                   
                            <tr style="background-color:ActiveBorder">
                                <td style="display:none">
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SuppNameLabel" runat="server" Text='<%# Eval("SuppName") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
                                </td>
                                <td></td>
                              
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td></td>
                                <%--<td>
                                    <asp:Label ID="AcNameLabel" runat="server" Text='<%# Eval("AcName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AcNumberLabel" runat="server" Text='<%# Eval("AcNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IFSCCodeLabel" runat="server" Text='<%# Eval("IFSCCode") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BankNameLabel" runat="server" Text='<%# Eval("BankName") %>' />
                                </td>--%>
                              
                                <td>
                                    <asp:Label ID="RemarkLabel" runat="server" Text='<%# Eval("Remark") %>' />
                                </td>
                                <td></td>
                                <td style="display:none">
                                    <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                                </td>
                                 <td>
                                     <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-danger" CommandName="Update" Text="Delete" />
                                   <%-- <asp:Button ID="EditButton" runat="server" CommandName="Update" Text="Edit" />--%>
                                </td>
                            </tr>
                            
                        
                    </AlternatingItemTemplate>
                      
                        <EditItemTemplate>
                            <tr style="">
                                
                                <td>
                                    <%--<asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />--%>
                                </td>
                                <td>
                                    <%--<asp:TextBox ID="SuppNameTextBox" runat="server" Text='<%# Bind("SuppName") %>' />--%>
                                </td>
                                <td>
                                    <%--<asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />--%>
                                </td>
                                <td>
                                  <%--  <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />--%>
                                </td>
                                <td>
                                   <%-- <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />--%>
                                </td>
                                <td>
                                   <%-- <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />--%>
                                </td>
                                <td>
                                    <%--<asp:TextBox ID="AcNameTextBox" runat="server" Text='<%# Bind("AcName") %>' />--%>
                                </td>
                                <td>
                                   <%-- <asp:TextBox ID="AcNumberTextBox" runat="server" Text='<%# Bind("AcNumber") %>' />--%>
                                </td>
                                <td>
                                  <%--  <asp:TextBox ID="IFSCCodeTextBox" runat="server" Text='<%# Bind("IFSCCode") %>' />--%>
                                </td>
                                <td>
                                   <%-- <asp:TextBox ID="BankNameTextBox" runat="server" Text='<%# Bind("BankName") %>' />--%>
                                </td>
                                <td>
                                   <%-- <asp:TextBox ID="RemarkTextBox" runat="server" Text='<%# Bind("Remark") %>' />--%>
                                </td>
                                <td>
                                    <%--<asp:TextBox ID="isActiveTextBox" runat="server" Text='<%# Bind("isActive") %>' />--%>
                                </td>
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Delete" />
                              
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was found</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
               
                        <ItemTemplate>
                            <tr style=" background-color:white">
                                <td style="display:none">
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SuppNameLabel" runat="server" Text='<%# Eval("SuppName") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
                                </td>
                                <td></td>
                              
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td></td>
                                <%--<td>
                                    <asp:Label ID="AcNameLabel" runat="server" Text='<%# Eval("AcName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AcNumberLabel" runat="server" Text='<%# Eval("AcNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IFSCCodeLabel" runat="server" Text='<%# Eval("IFSCCode") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BankNameLabel" runat="server" Text='<%# Eval("BankName") %>' />
                                </td>--%>
                              
                                <td>
                                    <asp:Label ID="RemarkLabel" runat="server" Text='<%# Eval("Remark") %>' />
                                </td>
                                <td></td>
                                <td style="display:none">
                                    <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                                </td>
                                 <td>
                                     <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-danger" CommandName="Update" Text="Delete" />
                                   <%-- <asp:Button ID="EditButton" runat="server" CommandName="Update" Text="Edit" />--%>
                                </td>
                            </tr>
                          
                        </ItemTemplate>
                       
                        <LayoutTemplate>
                          <table class="table table-borderedl table-striped" runat="server">
                                                    <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                            <tr runat="server" style="">
                                              <%--  <th runat="server"></th>
                                                <th runat="server"></th>--%>
                                                <th runat="server">SuppName  &nbsp</th>
                                                <th runat ="server"> &nbsp &nbsp &nbsp &nbsp</th>
                                                <th runat="server">Address   &nbsp &nbsp </th>
                                                 <th runat ="server"> &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp</th>
                                                <th runat="server">Mobile &nbsp &nbsp &nbsp &nbsp</th>
                                                  <th runat ="server"> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</th>
                                                <%--<th></th>--%>
                                                <th runat="server">Website</th>
                                                  <th runat ="server"> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</th>
                                                <th runat="server">Email</th>
                                                  <th runat ="server"> &nbsp &nbsp &nbsp </th>
                                               <%-- <th runat="server">AcName</th>
                                                <th runat="server">AcNumber</th>
                                                <th runat="server">IFSCCode</th>
                                                <th runat="server">BankName</th>--%>
                                                <th runat="server">Remark</th>
                                                  <th runat ="server"></th>
                                                <th runat="server"></th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                                                    <tr runat="server">
                                    <td runat="server" style="align-content:center;align-items:center;text-align:center">
                                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Listview1" PageSize="10">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Link"
                                                ButtonCssClass="btn btn-microsoft"
                                                ShowFirstPageButton="false"
                                                ShowPreviousPageButton="true"
                                                ShowNextPageButton="false" />
                                            <asp:NumericPagerField ButtonType="Link"
                                                NumericButtonCssClass="btn btn-microsoft" />
                                            <asp:NextPreviousPagerField ButtonType="Link"
                                                ButtonCssClass="btn btn-microsoft"
                                                ShowNextPageButton="true"
                                                ShowLastPageButton="false"
                                                ShowPreviousPageButton="false" />
                                                    </Fields>
                                                </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                       <%-- <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SuppNameLabel" runat="server" Text='<%# Eval("SuppName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AcNameLabel" runat="server" Text='<%# Eval("AcName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AcNumberLabel" runat="server" Text='<%# Eval("AcNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="IFSCCodeLabel" runat="server" Text='<%# Eval("IFSCCode") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BankNameLabel" runat="server" Text='<%# Eval("BankName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="RemarkLabel" runat="server" Text='<%# Eval("Remark") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>--%>
                    </asp:ListView>

                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyLMSConnectionString %>" SelectCommand="SELECT * FROM [Add_Suppliers] WHERE ([isActive] = @isActive)" 
                                   DeleteCommand="DELETE FROM [Add_Suppliers] WHERE [Id] = @Id" 
                                   InsertCommand="INSERT INTO [Add_Suppliers] ([SuppName], [Address], [Mobile], [Website], [Email], [AcName], [AcNumber], [IFSCCode], [BankName], [Remark], [isActive]) VALUES (@SuppName, @Address, @Mobile, @Website, @Email, @AcName, @AcNumber, @IFSCCode, @BankName, @Remark, @isActive)"
                                   UpdateCommand="UPDATE [Add_Suppliers] SET  [isActive] = 1 WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="SuppName" Type="String" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Mobile" Type="String" />
                                                <asp:Parameter Name="Website" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="AcName" Type="String" />
                                                <asp:Parameter Name="AcNumber" Type="String" />
                                                <asp:Parameter Name="IFSCCode" Type="String" />
                                                <asp:Parameter Name="BankName" Type="String" />
                                                <asp:Parameter Name="Remark" Type="String" />
                                                <asp:Parameter Name="isActive" Type="String" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="0" Name="isActive" Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="SuppName" Type="String" />
                                                <asp:Parameter Name="Address" Type="String" />
                                                <asp:Parameter Name="Mobile" Type="String" />
                                                <asp:Parameter Name="Website" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="AcName" Type="String" />
                                                <asp:Parameter Name="AcNumber" Type="String" />
                                                <asp:Parameter Name="IFSCCode" Type="String" />
                                                <asp:Parameter Name="BankName" Type="String" />
                                                <asp:Parameter Name="Remark" Type="String" />
                                                <asp:Parameter Name="isActive" Type="String" />
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </UpdateParameters>
                                </asp:SqlDataSource>
                    </div>
                        </div>
                         </div>
                </div>
             
            </div>
         </div>
        </section>
    
</asp:Content>

