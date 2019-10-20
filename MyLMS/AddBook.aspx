<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <section class="content">
          <%--  <div class="content-wrapper" id="content-wrapper">--%>
            <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Book</h3>
                            <div class="box-body">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
                                                <asp:TextBox ID="Bkname" runat="server" CssClass="form-control" ></asp:TextBox>
                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="Book Author"></asp:Label>
                                            <asp:TextBox ID="BkAu" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>


                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Text="Actual Rs"></asp:Label>
                                            <asp:TextBox ID="AcRs" runat="server" CssClass="form-control"></asp:TextBox>

                                            <%-- <p class="help-block">Example block-level help text here.</p>--%>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="ISBN"></asp:Label>
                                            <asp:TextBox ID="ISBN" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label5" runat="server" Text="Brought By"></asp:Label>
                                            <asp:TextBox ID="BrBy" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label6" runat="server" Text="Condition"></asp:Label>
                                            <asp:TextBox ID="Condition" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnSubmit" class="btn btn-success " runat="server" Text="Save" OnClick="BtnSubmit_Click" />
                                        <asp:Button ID="BtnCancel" class="btn btn-danger" runat="server" Text="Cancel" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" Text="Book Type"></asp:Label>
                                        <asp:DropDownList ID="BookTypeDD" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="BookTypeDD_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="Book Pages"></asp:Label>
                                        <asp:TextBox ID="Bkpage" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" Text="MRP"></asp:Label>
                                        <asp:TextBox ID="mrp" runat="server" CssClass="form-control"></asp:TextBox>


                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label10" runat="server" Text="No. of Copies"></asp:Label>
                                        <asp:TextBox ID="noofcopies" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="Label11" runat="server" Text="Date"></asp:Label>
                                        <asp:TextBox ID="Daterec" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label12" runat="server" Text="Remark"></asp:Label>
                                        <asp:TextBox ID="Remark" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
 </div>
        </section>
 
    <script>
        $(function () {
            $('#' + '<%= Daterec.ClientID %>').datepicker(
                        {
                            changeMonth: true,
                            changeYear: true,
                            inline: true
                        }
                    );
        });
    </script>
</asp:Content>

