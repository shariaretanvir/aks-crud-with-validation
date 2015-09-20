<%@ Page Title="" Language="C#" MasterPageFile="~/CrudMaster.Master" AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="Crud_operation.Crud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
    
    <style type="text/css">

  input:required:invalid, input:focus:invalid {
    background-image: url("/invalid.png");
    background-position: right top;
    background-repeat: no-repeat;
  }
  
  input:required:valid {
    background-image: url("/valid.png");
    background-position: right top;
    background-repeat: no-repeat;
  }

</style>
      <script>
          $(function () {
              $("#ContentPlaceHolder1_TxtDateOfBirth").datepicker();
          });
          </script>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $("#form1").validate();
        });
        $("#TxtName").click(function () {
            if ($('#form1').valid()) {
                alert("form is valid");
            } else {
                alert("form is invalid");
            }
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Name</span>
                        <asp:TextBox ID="TxtName" required="required" type="text" placeholder="Enter Name" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Email</span>
                        <asp:TextBox ID="TxtEmail" required="required" placeholder="Enter Email" Type="email" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Age</span>
                        <asp:TextBox ID="TxtAge" required="required" placeholder="Enter Age" Type="number" min="10" Max="90" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Address</span>
                        <asp:TextBox ID="TxtAddress" required="required" placeholder="Enter Address"  runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Gender</span>
                        <asp:TextBox ID="TxtGender" placeholder="Gender" required="required" type="text" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Country</span>
                        <asp:TextBox ID="TxtCountry" required="required" placeholder="Enter Country" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Phone Number</span>
                        <asp:TextBox ID="TxtPhone" required="required" type="tel" pattern="[\+]\d{3}[\-]\d{4}[\-]\d{6}" placeholder="+880-1***-******"  runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Date Of Birth</span>
                        <asp:TextBox ID="TxtDateOfBirth" required="required" type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" placeholder="dd/mm/yyyy"  runat="server" class="form-control"></asp:TextBox>    <%--pattern="\d{1,2}/\d{1,2}/\d{4}" placeholder="dd/mm/yyyy"--%>                    
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" style="width:110px; text-align:left">Salary</span>
                        <asp:TextBox ID="TxtSalary" required="required" type="number" pattern="[0-9]+([\.|,][0-9]+)?" step="0.01"
            title="This should be a number with up to 2 decimal places." placeholder="Enter Salary" runat="server" class="form-control"></asp:TextBox>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2"></div>
        <asp:Button CssClass="btn btn-primary " ID="BtnAdd" type="submit" runat="server" Text="Add New" OnClick="BtnAdd_Click" />
        <div class="col-sm-2"></div>
        <asp:Button ID="BtnCancle" CssClass="btn btn-danger" runat="server" Text="Cancle" OnClick="BtnCancle_Click" />
        
 

        

      <%--  <div class="form-group" id="div1" runat="server">
            <table style="width: 60%; margin: auto">
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox CssClass="form-control required" ID="TxtName" required="required" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" CssClass="form-control required email" runat="server" TextMode="Email"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td>
                        <asp:TextBox ID="TxtAge" CssClass="form-control required" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Address :</td>
                    <td>
                        <asp:TextBox ID="TxtAddress" CssClass="form-control required" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>Gender :</td>
                    <td>
                        <asp:TextBox ID="TxtGender" CssClass="form-control required" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Country :</td>
                    <td>
                        <asp:TextBox CssClass="form-control required" ID="TxtCountry" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>PhoneNumber :</td>
                    <td>
                        <asp:TextBox CssClass="form-control required number" MinLength="7" MaxLength="11" ID="TxtPhone" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Date Of Birth :</td>
                    <td>
                        <asp:TextBox CssClass="form-control required number" ID="TxtDateOfBirth" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Salary :</td>
                    <td>
                        <asp:TextBox CssClass="form-control required number" ID="TxtSalary" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Button CssClass="btn btn-primary " ID="BtnAdd" type="submit" runat="server" Text="Add New" OnClick="BtnAdd_Click" />
                        &nbsp;
                        <asp:Button ID="BtnCancle" CssClass="btn btn-danger" runat="server" Text="Cancle" OnClick="BtnCancle_Click" />&nbsp;
                    </td>
                </tr>
            </table>


        </div>

        <br />
        <div style="text-align: center">
            <asp:GridView ID="grd_show" DataKeyNames="Id" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="435px">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Crud.aspx?id={0}" Text="Edit" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Crud.aspx?Did={0}" Text="Delete" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>

        <br />--%>



    </div>
    
    <div style="text-align: center; padding-left:200px; margin-top:50px; margin-bottom:50px ">
            <asp:GridView ID="grd_show" DataKeyNames="Id" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="435px">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Crud.aspx?id={0}" Text="Edit" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Crud.aspx?Did={0}" Text="Delete" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
</asp:Content>
