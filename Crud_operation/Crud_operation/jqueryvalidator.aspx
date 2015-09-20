<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jqueryvalidator.aspx.cs" Inherits="Crud_operation.jqueryvalidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.5.5/jquery.validate.min.js"></script>
    <script type="text/javascript" src="http://jquery-multifile-plugin.googlecode.com/svn-history/r16/trunk/jquery.MetaData.js"></script>
    <title></title>
    
<script type="text/javascript">
    $(document).ready(function () {
        $("#form1").validate();
    });
</script>
    <style>
        .error {
        color:red;
        font-weight:bold;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
<asp:TextBox ID="txtName" runat="server" class="required" ></asp:TextBox>
<asp:TextBox ID="txtage" runat="server" class="required number" minlength="2"></asp:TextBox>
<asp:TextBox ID="txtEmail" runat="server" class="required email"></asp:TextBox>
<asp:TextBox ID="txtPass" runat="server" TextMode="Password"  class="required"></asp:TextBox>
<asp:TextBox ID="txtRePass" runat="server" TextMode="Password" equalto="#txtPass" class="required" ></asp:TextBox>
<asp:TextBox ID="txtUrl" runat="server" class="required url">http://</asp:TextBox>
<asp:Button ID="btnSubmit" runat="server" Text="submit" />
</form>



</body>
</html>
