<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="UpdateSuppliers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper" id="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Update Suppliers</h3>
                            <div class="box-body">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-group">

                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                                <asp:DropDownList ID="upadtenmDD" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="upadtenmDD_SelectedIndexChanged" >
                                                   <%-- <asp:ListItem>New Delhi </asp:ListItem>
                                                    <asp:ListItem>Greater Noida</asp:ListItem>--%>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                                            <asp:TextBox ID="Adres" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>


                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                                            <asp:TextBox ID="mob" runat="server" CssClass="form-control"></asp:TextBox>


                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="Website"></asp:Label>
                                            <asp:TextBox ID="web" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                                            <asp:TextBox ID="eml" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnUpdateRec" CssClass="btn btn-success " runat="server" Text="Update Record" OnClick="BtnUpdateRec_Click" />
                                        <asp:Button ID="BtnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="A/c Name"></asp:Label>
                                        <div class="form-group">

                                            <asp:TextBox ID="acnm" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" Text="A/c Number"></asp:Label>
                                        <asp:TextBox ID="acnum" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="IFSC Code"></asp:Label>
                                        <asp:TextBox ID="ifscod" runat="server" CssClass="form-control"></asp:TextBox>


                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" Text="Bank name"></asp:Label>
                                        <asp:TextBox ID="bnknm" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="Label10" runat="server" Text="Remark"></asp:Label>
                                        <asp:TextBox ID="rm" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
    </div>
</asp:Content>

