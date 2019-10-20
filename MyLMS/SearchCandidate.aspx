<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="SearchCandidate.aspx.cs" Inherits="_Default" %>

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
                            <h4 class="box-title">&nbsp;&nbsp;Search Candidate</h4>
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
                                <asp:TextBox ID="TxtCandidateId" placeholder="Candidate Id" runat="server" Style="float: left; margin-right: -20px;"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TxtCandidateName" placeholder="Candidate Name" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <asp:GridView ID="SearchcandidateGV" runat="server" CssClass="table table-bordered table-striped" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" ForeColor="#333333" GridLines="None">

                                    <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                           <%-- <asp:BoundField DataField="Candidate Id" HeaderText="Book_Name" SortExpression="Book_Name" />--%>
                                            <asp:BoundField DataField="Candidate_Name" HeaderText="Book_author" SortExpression="Book_author" />
                                            <asp:BoundField DataField="Candidate_Gender" HeaderText="Actual_Rs" SortExpression="Actual_Rs" />
                                            <asp:BoundField DataField="Candidate_Type" HeaderText="ISBN" SortExpression="ISBN" />
                                            <asp:BoundField DataField="Check_Date" HeaderText="Brought_By" SortExpression="Brought_By" />
                                            <asp:BoundField DataField="Remark" HeaderText="Condition" SortExpression="Condition" />
                                          


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
<%--    </div>--%>
</asp:Content>

