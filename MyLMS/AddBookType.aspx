<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddBookType.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="content-wrapper" id="content-wrapper">--%>
        <section class="content">
            <div class="row">
                <div class="col-md-2"></div>
                
                <div class="col-md-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Book Type</h3>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group">

                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Book Type"></asp:Label>

                                                <asp:TextBox ID="bktype" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="Remark"></asp:Label>
                                            <asp:TextBox ID="remk" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-success" Text="Save" OnClick="BtnSave_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-2"></div>
            </div>
        </section>
    <%--</div>--%>

</asp:Content>

