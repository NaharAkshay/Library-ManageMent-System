<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <%-- <div class="content-wrapper">--%>
        <div class="content">
            <div class="row">
                <!-- /.box -->
                <div class="col-md-12">
                    <div class="box">

                        <div class="box-header">
                            <!-- ExportExcel-->
                            <h4 class="box-title">&nbsp;&nbsp;Search Book</h4>
                            <button type="submit" class="btn-primary" style="float: right; margin-left: 10px;">
                                <i class="fa fa-file-excel-o"></i>
                            </button>
                            <!-- //ExportExcel-->
                            <!-- ExportPdf-->
                            <button type="submit" class="btn-primary" style="float: right;">
                                <i class="fa fa-file-pdf-o"></i>
                            </button>
                            <!-- //ExportPdf-->
                        </div>

                        <!-- /.box-header -->
                        <div class="container-fluid">

                            <div class="col-md-12">
                                <%-- <asp:Button ID="Button1" href="#" runat="server" Text="Categories" Style="background-color: blue; color: white; margin-left: -20px;" />
                                <asp:Button ID="Button2" href="#" runat="server" Text="Import CSV" Style="background-color: blue; color: white;" />--%>
                                <asp:TextBox ID="TxtBookId" placeholder="Book ID" runat="server" AutoPostBack="true" Style="float: left; margin-right: -20px;" OnTextChanged="TxtBookId_TextChanged"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TxtBookName" placeholder="BookName" runat="server" AutoPostBack="true" OnTextChanged="TxtBookName_TextChanged"></asp:TextBox>
                                <asp:TextBox ID="TxtAuthorName" placeholder="AuthorName" runat="server" AutoPostBack="true" Style="margin-right: -25px;" OnTextChanged="TxtAuthorName_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <asp:GridView ID="SearchBookGV" runat="server"  CssClass="table table-bordered table-striped" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" ForeColor="#333333" GridLines="None">
                                     <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                                            <asp:BoundField DataField="Book_author" HeaderText="Book_author" SortExpression="Book_author" />
                                            <asp:BoundField DataField="Actual_Rs" HeaderText="Actual_Rs" SortExpression="Actual_Rs" />
                                            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                                            <asp:BoundField DataField="Brought_By" HeaderText="Brought_By" SortExpression="Brought_By" />
                                            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                                            <asp:BoundField DataField="Book_Type" HeaderText="Book_Type" SortExpression="Book_Type" />
                                            <asp:BoundField DataField="Book_Pages" HeaderText="Book_Pages" SortExpression="Book_Pages" />
                                            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                                            <asp:BoundField DataField="No_Of_Copies" HeaderText="No_Of_Copies" SortExpression="No_Of_Copies" />
                                             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />


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
                    <!-- /.col -->
                </div>
            </div>
        </div>
    </div>


</asp:Content>

