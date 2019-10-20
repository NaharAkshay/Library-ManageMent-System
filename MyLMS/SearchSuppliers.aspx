<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="SearchSuppliers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="content-wrapper">--%>
        <div class="content">
            <div class="container-fluid" style="padding: 0; overflow: hidden">
                <div class="row">
                    <!-- /.box -->
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-header">
                                <!-- ExportExcel-->
                                <h4 class="box-title">&nbsp;&nbsp;Search Suppliers</h4>
                                <%-- <button type="submit" class="btn-primary" style="float: right; margin-left: 10px;">
                                <i class="fa fa-file-excel-o"></i>
                            </button>--%>
                                <!-- ExportExcel-->
                                <!-- ExportPDF-->
                                <%--<button type="submit" class="btn-primary" style="float: right;">
                                <i class="fa fa-file-pdf-o"></i>
                            </button>--%>
                                <!-- ExportPDF-->
                            </div>

                            <!-- /.box-header -->
                            <div class="container-fluid">


                                <div class="col-md-3 col-sm-6">
                                    <asp:Label ID="splabel" runat="server" Text="Suppliers Name"></asp:Label>
                                    <asp:TextBox ID="suppName1" runat="server" Width="134px" AutoPostBack="true" OnTextChanged="suppName1_TextChanged"></asp:TextBox>
                                </div>

                            </div>

                            <div class="box-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="searchsuppGV" runat="server" CssClass="table table-bordered table-striped" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="SuppName" HeaderText="SuppName" SortExpression="SuppName" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                            <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="AcNumber" HeaderText="AcNumber" SortExpression="AcNumber" />
                                            <asp:BoundField DataField="AcName" HeaderText="AcName" SortExpression="AcName" />
                                            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                                            <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                                            <asp:BoundField DataField="IFSCCode" HeaderText="IFSCCode" SortExpression="IFSCCode" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>

                                   
                                </div>
                                <!-- /.box-body -->
                               
                            </div>
                            <!-- /.box -->

                        </div>
                    </div>
                    <!-- /.col -->
                </div>
            </div>
        </div>
   
</asp:Content>

