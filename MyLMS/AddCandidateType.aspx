<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddCandidateType.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <%--  <div class="content-wrapper" id="content-wrapper">--%>
        <section class="content">
            <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Candidate Type</h3>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group">

                                            <div class="form-group">
                                               <asp:Label ID="Label1"  runat="server" Text="Candidate Type"></asp:Label>

                                                <asp:TextBox ID="canditype" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label2"  runat="server" Text="Book Limit"></asp:Label>
                                            <asp:TextBox ID="bklimit" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                             <asp:Label ID="Label3"  runat="server" Text="Day Limit"></asp:Label>
                                            <asp:TextBox ID="dylimit" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                           <asp:Label ID="Label4"  runat="server" Text="User Limit(Month)"></asp:Label>
                                            <asp:TextBox ID="userlimit" runat="server" CssClass="form-control"></asp:TextBox>
                                            <div class="form-group">
                                                 <asp:Label ID="Label5"  runat="server" Text="Remark"></asp:Label>
                                                <asp:TextBox ID="rmk" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnAdd" runat="server" CssClass="btn btn-success" Text="Add" Style="width: 100px;" OnClick="BtnAdd_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
                </div>
        </section>
  <%--  </div>--%>
</asp:Content>

