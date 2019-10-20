<%@ Page Title="" Language="C#" MasterPageFile="~/MyLMS/MasterPageMain.master" AutoEventWireup="true" CodeFile="BookIssueForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

     <script type="text/javascript">
         $(function () {
             $("#<%=issueBook.ClientID %>").datepicker({
                numberOfMonths: 1,
                onSelect: function (selected) {
                    var dt = new Date(selected);
                    dt.setDate(dt.getDate() + 1);
                    $("#<%=issueBook.ClientID %>").datepicker("option", "minDate", dt);
                }
            });
            $("#<%=ReturnDate.ClientID %>").datepicker({
                numberOfMonths: 1,
                onSelect: function (selected) {
                    var dt = new Date(selected);
                    dt.setDate(dt.getDate() - 1);
                    $("#<%=ReturnDate.ClientID %>").datepicker("option", "maxDate", dt);
                }
        });
         });

     </script>
    <script type="text/javascript">
        $(document).ready(function () {
            var d = new Date();
            var curr_year = d.getFullYear();
            $("#<%=issueBook.ClientID %>").datepicker(
            { yearRange: '2018:' + curr_year, changeMonth: 'may:' + curr_year, changeYear: true, maxDate: '-1d' });
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <%-- <div class="content-wrapper" id="content-wrapper">
        <div class="content">--%>
    <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Book Issue Form</h3>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Text="Candidate Name"></asp:Label>
                                        <asp:DropDownList ID="cndnmDD" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cndnmDD_SelectedIndexChanged">
                                           
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label2" runat="server" Text="Candidate ID"></asp:Label>
                                        <asp:DropDownList ID="CnIdDD" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CnIdDD_SelectedIndexChanged">
                                           
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label3" runat="server" Text="Book Name"></asp:Label>
                                        <asp:DropDownList ID="BookNmDD" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="BookNmDD_SelectedIndexChanged">
                                          
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label4" runat="server" Text="Book ID"></asp:Label>
                                        <asp:DropDownList ID="BooKIdDD" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="BooKIdDD_SelectedIndexChanged">
                                           
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label5" runat="server" Text="Issue Date"></asp:Label>
                                        <%--<asp:TextBox ID="issueBook" runat="server" class="form-control"></asp:TextBox>--%>
                                         <div class="form-group">
                                                <asp:TextBox ID="issueBook"
                                                    runat="server"
                                                    placeholder="Date From"
                                                    CssClass="form-control datepicker issueBook border-2"
                                                    data-date-start-date="0d">
                                                </asp:TextBox>
                                            </div>



                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="Return Date"></asp:Label>
                                       <%-- <asp:TextBox ID="ReturnDate" runat="server" class="form-control"></asp:TextBox>--%>
                                         <asp:TextBox ID="ReturnDate"
                                                    runat="server"
                                                    placeholder="Date To"
                                                    CssClass="form-control datepicker ReturnDate border-2"
                                                    data-date-start-date="0d">
                                                </asp:TextBox>
                                    </div>
                                     
                                    
                                    <!-- /.box-body -->

                                    <div class="box-footer">
                                        <asp:Button ID="BtnSave" runat="server" class="btn btn-success" Text="Save" OnClick="BtnSave_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>

        </div>
   <%-- </div>--%>
    <%--<script>
        $(function () {
            $('#' + '<%= issueBook.ClientID %>').datepicker(
                        {
                        
                            changeMonth: true,
                            changeYear: true,
                            inline: true
                        }
                    );
        });
    </script>--%>
    <%--<script>
        $(function () {
            $('#' + '<%= ReturnDate.ClientID %>').datepicker(
                        {
                            changeMonth: true,
                            changeYear: true,
                            
                            inline: true
                        }
                    );
        });
    </script>--%>

   <%-- <script type="text/javascript">
        $(function () {
            $("#<%=issueBook.ClientID %>").datepicker({
                numberOfMonths: 2,
                onSelect: function (selected) {
                    var dt = new Date(selected);
                    dt.setDate(dt.getDate() + 1);
                    $("#<%=issueBook.ClientID %>").datepicker("option", "minDate", dt);
                }
            });
        $("#<%=ReturnDate.ClientID %>").datepicker({
                numberOfMonths: 2,
                onSelect: function (selected) {
                    var dt = new Date(selected);
                    dt.setDate(dt.getDate() - 1);
                    $("#<%=ReturnDate.ClientID %>").datepicker("option", "maxDate", dt);
                }
            });
        }); </script>--%>

   
</asp:Content>

