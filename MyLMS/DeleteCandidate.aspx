<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="DeleteCandidate.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="content-wrapper">--%>
    <%--<div class="content">--%>
    <section class="content">
        <div class="container-fluid" style="padding: 0; overflow: hidden">
            <div class="row">
                <!-- /.box -->
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <!-- ExportExcel-->
                            <h4 class="box-title">&nbsp;&nbsp;Delete Candidate</h4>

                            <!-- ExportPDF-->
                        </div>

                        <!-- /.box-header -->
                        <div class="container-fluid">
                            <div class="col-md-3 col-sm-6">
                                <asp:TextBox ID="TxtCanName" placeholder="Candidate Name" runat="server" OnTextChanged="TxtCanName_TextChanged"></asp:TextBox>
                            </div>
                        </div>

                        <div class="box-body">
                            <div class="table-responsive">
                                <asp:ListView ID="DeleteCandidateLV" runat="server"
                                    GroupPlaceholderID="groupPlaceHolder" OnItemCommand="DeleteCandidateLV_ItemCommand"
                                    ItemPlaceholderID="itemPlaceHolder" OnPagePropertiesChanging="DeleteCandidateLV_PagePropertiesChanging">
                                       <LayoutTemplate>
                                               
                                                <table class="table table-borderedl table-striped">
                                                    <tr>
                                                        <td style="display: none"><b>ID</b></td>
                                                        <td><b>Candidate Name</b></td>
                                                        <td><b>Candidate Gender</b></td>
                                                        <td><b>Candidate Type</b></td>
                                                        <td><b>Check Date</b></td>
                                                        <td><b>Remark</b></td>
                                                         <td></td>
                
                                                    </tr>
                                                    <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                                </table>
                                                </div>

                                           
                                    <div runat="server" style="align-content:center;align-items:center;text-align:center">
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="DeleteCandidateLV" PageSize="10">
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
                                                        ID="labl"
                                                        Visible="false"
                                                        runat="server"
                                                        Text='<%# Eval("Id")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label1"
                                                        runat="server"
                                                        Text='<%# Eval("Candidate_Name")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label2"
                                                        runat="server"
                                                        Text='<%# Eval("Candidate_Gender")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label3"
                                                        runat="server"
                                                        Text='<%# Eval("Candidate_Type")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label4"
                                                        runat="server"
                                                        Text='<%# Eval("Check_Date")%>'> 

                                                    </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label
                                                        ID="Label12"
                                                        runat="server"
                                                        Text='<%# Eval("Remark")%>'> 

                                                    </asp:Label>
                                                </td>
                                               
                                                
                                              
                                             
                                                <td>
                                                    <asp:Button ID="BtnDltcandid" runat="server" Text="Delete" CssClass="btn btn-danger" />
                                                </td>
                                            </ItemTemplate>
                                    </asp:ListView>
                                    <%-- <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Book</th>
                                                <th>Categories</th>
                                                <th>Qty.</th>
                                                <th>Available</th>
                                                <th>Price</th>
                                                <th>Read</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                   
                                                </td>
                                                <td>Win 95+</td>
                                                <td>4</td>
                                                <td>565</td>
                                                <td>223</td>
                                                <td>
                                                    <div class="box-body">
                                                        <div class="margin">
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-default">Action</button>
                                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                                    <span class="caret"></span>
                                                                    <span class="sr-only">Toggle Dropdown</span>
                                                                </button>
                                                                <ul class="dropdown-menu" role="menu">
                                                                    <li><a href="#"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></li>
                                                                    <li><a href="#"><i class="fa fa-edit"></i>Edit Book</a></li>
                                                                    <li><a href="#"><i class="fa fa-print"></i>Print Bar Code</a></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                   
                                                </td>
                                                <td>Win 95+</td>
                                                <td>5</td>
                                                <td>262</td>
                                                <td>515</td>
                                                <td>
                                                    <div class="box-body">
                                                        <div class="margin">
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-default">Action</button>
                                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                                    <span class="caret"></span>
                                                                    <span class="sr-only">Toggle Dropdown</span>
                                                                </button>
                                                                <ul class="dropdown-menu" role="menu">
                                                                    <li><a href="#"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></li>
                                                                    <li><a href="#"><i class="fa fa-edit"></i>Edit Book</a></li>
                                                                    <li><a href="#"><i class="fa fa-print"></i>Print Bar Code</a></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                    
                                                </td>
                                                <td>Win 95+</td>
                                                <td>5.5</td>
                                                <td>63</td>
                                                <td>63</td>
                                            </tr>





                                        </tbody>
                                        <tfoot>

                                            <tr>
                                                <th>Book</th>
                                                <th>Categories</th>
                                                <th>Qty.</th>
                                                <th>Available</th>
                                                <th>Price</th>
                                                <th>Read</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>--%>
                            </div>
                            <!-- /.box-body -->
                            <%--  <asp:Button ID="BtnDeleteCan" runat="server" CssClass="btn btn-danger" Text="Delete" />--%>
                        </div>
                        <!-- /.box -->

                    </div>
                </div>
                <!-- /.col -->
            </div>
        </div>
        </section>
    <%--</div>--%>
<%--    </div>--%>

</asp:Content>

