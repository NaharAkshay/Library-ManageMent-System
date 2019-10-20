<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddSuppliers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Suppliers</h3>
                            <div class="box-body">
                                <div class="col-md-6">
                                    
                                       
                                        <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                                <asp:TextBox ID="Addname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                                            <asp:TextBox ID="adrs" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                                            <asp:TextBox ID="Mobile" runat="server" CssClass="form-control" ></asp:TextBox>


                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="Website"></asp:Label>
                                            <asp:TextBox ID="websitee" runat="server" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                                            <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="acna" runat="server" Text="A/c Name"></asp:Label>
                                        <div class="form-group">

                                            <asp:TextBox ID="acname" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" Text="A/c Number"></asp:Label>
                                        <asp:TextBox ID="acnumber" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="IFSC code"></asp:Label>
                                        <asp:TextBox ID="ifscode" runat="server" CssClass="form-control"></asp:TextBox>


                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" Text="Bank Name"></asp:Label>
                                        <asp:TextBox ID="bnkname" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="Label10" runat="server" Text="Remark"></asp:Label>
                                        <asp:TextBox ID="rem" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnSave" CssClass="btn btn-success " runat="server" Text="Save" OnClick="BtnSave_Click" />
                                        <asp:Button ID="BtnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                    </div>
  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%-- </div>--%>
        </section>
   

</asp:Content>

