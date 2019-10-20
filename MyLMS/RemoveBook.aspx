<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="RemoveBook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="content-wrapper">
        <div class="content">
            <div class="container-fluid" style="padding: 0; overflow: hidden">--%>
                <div class="row">
                    <!-- /.box -->
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-header">
                                <!-- ExportExcel-->
                                <h4 class="box-title">&nbsp;&nbsp;Remove Book</h4>

                                <!-- ExportPDF-->
                            </div>

                            <!-- /.box-header -->
                            <div class="container-fluid">


                                <div class="col-md-3 col-sm-6">
                                    <asp:TextBox ID="TextBox2" placeholder="Book Name" runat="server"></asp:TextBox>
                                </div>

                            </div>

                            <div class="box-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="DeleteBookGV" runat="server"></asp:GridView>
                                    <table id="example1" class="table table-bordered table-striped">
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
                                    </table>
                                </div>
                                <!-- /.box-body -->
                                <asp:Button ID="BtnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" />
                            </div>
                            <!-- /.box -->

                        </div>
                    </div>
                    <!-- /.col -->
                </div>
            <%--</div>
        </div>
    </div>--%>

</asp:Content>

