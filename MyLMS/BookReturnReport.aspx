<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="BookReturnReport.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- <div class="content-wrapper">--%>
    <div class="content">
        <div class="container-fluid" style="padding: 0; overflow: hidden">
            <div class="row">
                <!-- /.box -->
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <!-- ExportExcel-->
                            <h4 class="box-title">&nbsp;&nbsp;Book Return Report</h4>
                            <button type="submit" class="btn-primary" style="float: right; margin-left: 10px;">
                                <i class="fa fa-file-excel-o"></i>
                            </button>
                            <!-- ExportExcel-->
                            <!-- ExportPDF-->
                            <button type="submit" class="btn-primary" style="float: right;">
                                <i class="fa fa-file-pdf-o"></i>
                            </button>
                            <!-- ExportPDF-->
                        </div>

                        <!-- /.box-header -->
                        <div class="container-fluid">


                            <div class="col-md-2 col-sm-4">
                                <asp:Label ID="Cname" runat="server" Text="Candidate Name"></asp:Label>
                                <asp:TextBox ID="SearchReturnBook" placeholder="Search" runat="server" OnTextChanged="SearchReturnBook_TextChanged"></asp:TextBox>
                            </div>


                        </div>


                        <div class="box-body">
                            <div class="table-responsive">
                                <asp:ListView ID="BookRetLV" runat="server"
                                    GroupPlaceholderID="groupPlaceHolder"
                                    ItemPlaceholderID="itemPlaceHolder" OnItemCommand="BookRetLV_ItemCommand"
                                    OnPagePropertiesChanging="BookRetLV_PagePropertiesChanging">
                                    <LayoutTemplate>
                                        <%-- <div class="container">
                                                <div class="row">--%>
                                        <table class="table table-borderedl table-striped">
                                            <tr>
                                                <td style="display: none"><b>ID</b></td>
                                                <td><b>CandidateName</b></td>
                                                <td><b>CandidateId</b></td>
                                                <td><b>BookName</b></td>
                                                <td><b>BookId</b></td>
                                                <td><b>IssueDate</b></td>
                                                <td><b>ReturnDate</b></td>
                                                <td></td>


                                            </tr>
                                            <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                        </table>
                                        </div>
                                        <div style="align-content:center;align-items:center;text-align:center">
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="BookRetLV" PageSize="5" >
                       <Fields>
                                    <%--<asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ShowNextPageButton="false" />

                                   <asp:NumericPagerField ButtonType="Link" />

                                 <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />--%>


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
                                        </div>
                                    </LayoutTemplate>


                                    <GroupTemplate>

                                        <tr>
                                            <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                                        </tr>

                                    </GroupTemplate>


                                    <ItemTemplate>
                                        <td style="display: none">
                                            <asp:Label
                                                ID="bokid"
                                                Visible="false"
                                                runat="server"
                                                Text='<%# Eval("Id")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label
                                                ID="Label1"
                                                runat="server"
                                                Text='<%# Eval("CandidateName")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label
                                                ID="Label2"
                                                runat="server"
                                                Text='<%# Eval("CandidateId")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label
                                                ID="Label3"
                                                runat="server"
                                                Text='<%# Eval("BookName")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label
                                                ID="Label4"
                                                runat="server"
                                                Text='<%# Eval("BookId")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label
                                                ID="Label12"
                                                runat="server"
                                                Text='<%# Eval("IssueDate")%>'> 

                                            </asp:Label>
                                        </td>
                                        <td>

                                            <asp:Label
                                                ID="Label5"
                                                runat="server"
                                                Text='<%# Eval("ReturnDate")%>'> 

                                            </asp:Label>

                                        </td>

                                        <td>
                                            <asp:Button ID="BtnRetRepot" runat="server" Text="Select" CssClass="btn btn-primary" OnClick="BtnRetRepot_Click" />
                                        </td>
                                    </ItemTemplate>
                                </asp:ListView>
                              
                            </div>
                            <div class="container-fluid">


                                <div class="col-md-2 col-sm-4">
                                    <asp:Label ID="Label8" runat="server" Text="Issue date"></asp:Label>
                                    <asp:TextBox ID="txtdt" runat="server"></asp:TextBox>

                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <asp:Label ID="Label9" runat="server" Text="Return date"></asp:Label>
                                    <asp:TextBox ID="txtdte" runat="server"></asp:TextBox>
                                </div>
                               <%-- <div class="col-md-2 col-sm-4">
                                    <asp:TextBox ID="TextBookid" placeholder="Book ID" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <asp:TextBox ID="Textbknm" placeholder="Book Name" runat="server"></asp:TextBox>
                                </div>--%>
                                <div class="col-md-2 col-sm-4">
                                    <asp:Label ID="Label10" runat="server" Text="delay"></asp:Label>
                                    <asp:TextBox ID="Textdely" runat="server"></asp:TextBox>
                                </div>
                                <%-- <div class="col-md-2 col-sm-4">
                                    <asp:TextBox ID="Textbkfare" placeholder="Total Amount" runat="server"></asp:TextBox>
                                </div>--%>
                                <div class="col-md-2 col-sm-4">
                                    <asp:Label ID="Label6" runat="server" Text="Late Fee"></asp:Label>  
                                    <asp:TextBox ID="txtltfee" placeholder="10" runat="server" Enabled="false"></asp:TextBox>
                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <asp:Label ID="Label7" runat="server" Text="Total Amount"></asp:Label>
                                    <asp:TextBox ID="TextTamt"  runat="server"></asp:TextBox>
                                </div>


                            </div>
                            <br />

                            <!-- /.box-body -->
                           <%-- <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-success" Text="Save" Style="width: 200px;" />--%>
                        </div>
                        <!-- /.box -->

                    </div>
                </div>
            </div>
            <!-- /.col -->
        </div>
    </div>


</asp:Content>

