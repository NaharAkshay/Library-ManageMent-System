<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddCandidate.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <%--<div class="content-wrapper" id="content-wrapper">--%>
        <section class="content">
            <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>

                <div class="col-md-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Candidate</h3>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <div class="form-group" style="align-content:center;text-align:center">
                                 <asp:Label ID="Label1"  runat="server" Text="Candidate ID: "></asp:Label>
                                                <asp:Label ID="TextID" runat="server" class="form-control" Enabled="false"></asp:Label>
                                            </div>

                                        </div>
                                          <div class="form-group">
                                 <asp:Label ID="Labid"  runat="server" Text="Candidate Name"></asp:Label>
                                                <asp:TextBox ID="cndnm" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        <%--<div class="form-group">
                                             <asp:Label ID="Label2"  runat="server" Text="Add Candidate type"></asp:Label>
                                            <asp:TextBox ID="act" runat="server" class="form-control" ></asp:TextBox>
                                        </div>--%>
                                        <div class="form-group">
                                            <asp:Label ID="Label3"  runat="server" Text="Gender"></asp:Label>
                                            <asp:DropDownList ID="genderDD" class="form-control" runat="server">
                                                <asp:ListItem>Male </asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="Label4"  runat="server" Text="Candidate Type"></asp:Label>
                                            <asp:DropDownList ID="cndtyDD" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cndtyDD_SelectedIndexChanged">
                                               <%-- <asp:ListItem>New Delhi </asp:ListItem>
                                                <asp:ListItem>Greater Noida</asp:ListItem>--%>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                             <asp:Label ID="Label5"  runat="server" Text="Check Date"></asp:Label>
                                            <asp:TextBox ID="TxtDate" runat="server" class="form-control" ></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label ID="Label6"  runat="server" Text="Remark"></asp:Label>
                                            <asp:TextBox ID="remkk" runat="server" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnAdd" runat="server" class="btn btn-success" Text="Add" Style="width: 100px;" OnClick="BtnAdd_Click" />
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
   <%-- </div>--%>
    <script>
        $(function () {
            $('#' + '<%= TxtDate.ClientID %>').datepicker(
                        {
                            changeMonth: true,
                            changeYear: true,
                            inline: true
                        }
                    );
        });
    </script>

</asp:Content>

