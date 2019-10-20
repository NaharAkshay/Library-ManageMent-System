<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="RecoverSuppliers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper" id="content-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Recover Suppliers</h3>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group">

                                            <div class="form-group">

                                                <asp:Label ID="Label1" runat="server" Text="Suppliers Name"></asp:Label>
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Suppliers Name"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnRecover" runat="server" class="btn btn-success" Text="Recover" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

