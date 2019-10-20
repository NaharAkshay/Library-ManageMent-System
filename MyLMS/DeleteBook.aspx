<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="DeleteBook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="content">
                <div class="container-fluid" style="padding: 0; overflow: hidden">
                    <div class="row">
                        <!-- /.box -->
                        <div class="col-md-12">
                            <div class="box">
                                <div class="box-header">
                                    <!-- ExportExcel-->
                                    <h4 class="box-title">&nbsp;&nbsp;Delete Book</h4>


                                    <%-- <asp:Button runat="server" ID="btnexcel" Text="<i class='fa fa-excel'></i>" ValidationGroup="edt" OnClick=""  CssClass="" />--%>
                                    <asp:LinkButton runat="server" ID="btnexcel" OnClick="btnexcel_Click" CssClass="btn btn-primary" Style="float: right; margin-left: 10px;">
                                            <i class='fa fa-file-excel-o'></i></asp:LinkButton>
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
                                        <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
                                        <asp:TextBox ID="txtboknm" runat="server" AutoPostBack="true" OnTextChanged="txtboknm_TextChanged"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <div class="table-responsive">


                                        <asp:ListView ID="DeleteBookLV" runat="server"
                                            GroupPlaceholderID="groupPlaceHolder" 
                                            OnItemCommand="DeleteBookLV_ItemCommand"
                                            ItemPlaceholderID="itemPlaceHolder" 
                                            OnPagePropertiesChanging="DeleteBookLV_PagePropertiesChanging">
                                            <LayoutTemplate>
                                                <%-- <div class="container">
                                                <div class="row">--%>
                                                <table class="table table-borderedl table-striped">
                                                    <tr>
                                                        <td style="display: none"><b>ID</b></td>
                                                        <td><b>Book Name</b></td>
                                                        <td><b>Book Author</b></td>
                                                        <td><b>Actual Rs</b></td>
                                                        <td><b>ISBN</b></td>
                                                        <td><b>brought by</b></td>
                                                        <td><b>Condition</b></td>
                                                        <td><b>Book Type</b></td>
                                                        <td><b>Book Pages</b></td>
                                                        <td><b>MRP</b></td>
                                                        <td><b>No Of Copies</b></td>
                                                        <td><b>Date</b></td>
                                                        <td><b>Remark</b></td>
                                                        <td></td>

                                                    </tr>
                                                    <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                                </table>
                                                </div>

                                                <div style="align-content:center;align-items:center;text-align:center">
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="DeleteBookLV" PageSize="7">
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
                                                        ID="bkid"
                                                        Visible="false"
                                                        runat="server"
                                                        Text='<%# Eval("Id")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label1"
                                                        runat="server"
                                                        Text='<%# Eval("Book_Name")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label2"
                                                        runat="server"
                                                        Text='<%# Eval("Book_author")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label3"
                                                        runat="server"
                                                        Text='<%# Eval("Actual_Rs")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label4"
                                                        runat="server"
                                                        Text='<%# Eval("ISBN")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label12"
                                                        runat="server"
                                                        Text='<%# Eval("Brought_By")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>

                                                    <asp:Label
                                                        ID="Label5"
                                                        runat="server"
                                                        Text='<%# Eval("Condition")%>'> 

                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label6"
                                                        runat="server"
                                                        Text='<%# Eval("Book_Type")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>

                                                    <asp:Label
                                                        ID="Label7"
                                                        runat="server"
                                                        Text='<%# Eval("Book_Pages")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label8"
                                                        runat="server"
                                                        Text='<%# Eval("MRP")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label9"
                                                        runat="server"
                                                        Text='<%# Eval("No_Of_Copies")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label10"
                                                        runat="server"
                                                        Text='<%# Eval("Date")%>'> 

                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label11"
                                                        runat="server"
                                                        Text='<%# Eval("Remark")%>'> 
                                                    </asp:Label>

                                                </td>
                                                <td>
                                                    <asp:Button ID="BtnDltAdBk" runat="server" Text="Delete" CommandName="UPDATE" CssClass="btn btn-danger" />
                                                </td>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        <div class="container-fluid">
                                            <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                            <div class="col-md-3 col-sm-6">
                                                <asp:TextBox ID="txtbkid" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-md-3 col-sm-6">
                                                <asp:TextBox ID="txtbknm" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-md-3 col-sm-6">
                                                <asp:TextBox ID="txtnofcop" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-md-3 col-sm-6">
                                                <asp:TextBox ID="txtrem" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br />
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

        </ContentTemplate>

        <Triggers>
            <asp:PostBackTrigger ControlID="btnexcel" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

