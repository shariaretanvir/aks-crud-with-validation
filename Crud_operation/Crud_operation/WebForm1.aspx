<%@ Page Title="" Language="C#" MasterPageFile="~/CrudMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Crud_operation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="myform">
<label for="field">Required: </label>
<input type="text" class="left" id="field" name="field"/>
<br/>
<input type="submit" value="Validate!"/>
        </div>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

    
<script>
    // just for the demos, avoids form submit
    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });
    $("#myform").validate({
        rules: {
            field: {
                required: true
            }
        }
    });
</script>

<%--<script>
    // Check the captcha
    function checkCaptcha(value, validator, $field) {
        var items = $('#captchaOperation').html().split(' '),
            sum = parseInt(items[0]) + parseInt(items[2]);
        return value == sum;
    }

    $(document).ready(function () {
        // Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        }
        $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

        $('#basicBootstrapForm').formValidation();
    });
</script>--%>
</asp:Content>
