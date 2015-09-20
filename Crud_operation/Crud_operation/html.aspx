<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="html.aspx.cs" Inherits="Crud_operation.html" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
    
            <section id="wrapper">
                <form id="form1" runat="server">
                    <fieldset>
                        <legend>
                            Sample form
                        </legend>
                        <label for="username">
                            <span>chose a username</span>
                            <asp:TextBox ID="TextBox1" required="required"  runat="server"></asp:TextBox>
                            <%--<input required="required" id="username" />--%>
                        </label>
                          <label for="email_address">
                            <span>chose a username</span>
                            <asp:TextBox ID="TextBox2" required="required" type="email"  runat="server"></asp:TextBox>
                            <%--<input required="required"type="email" id="email" />--%>
                        </label>
                          <label for="password">
                            <span>chose a username</span>
                            <%--<asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>--%>
                            <input required="required" type="password" id="password" />
                        </label>
                        <asp:Button ID="BtnAdd" runat="server" type="submit" Text="Button" />
                        <%--<input type="submit" id="submit" />--%>
                    </fieldset>
                </form>
            </section>
   
</body>
</html>
