<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Crud_operation.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="dist/validator.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" data-toggle="validator" role="form" runat="server">
    <div>


        
  <div class="form-group">
    <label for="inputName" class="control-label">Name</label>
    <input type="text" class="form-control" id="inputName" placeholder="Cina Saffary" required="required"/>
  </div>
  <div class="form-group has-feedback">
    <label for="inputTwitter" class="control-label">Twitter</label>
    <div class="input-group">
      <span class="input-group-addon">@</span>
      <input type="text" title="aa" pattern="^[_A-z0-9]{1,}$" maxlength="15" class="form-control" id="inputTwitter" placeholder="1000hz" required="required"/>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <span class="help-block with-errors">Hey look, this one has feedback icons!</span>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="control-label">Email</label>
    <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required="required"/>
    <div class="help-block with-errors"></div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="control-label">Password</label>
    <div class="form-group col-sm-6">
      <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required="required"/>
      <span class="help-block">Minimum of 6 characters</span>
    </div>
    <div class="form-group col-sm-6">
      <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required="required"/>
      <div class="help-block with-errors"></div>
    </div>
    </div>
  </div>
  <div class="form-group">
    <div class="radio">
      <label>
        <input type="radio" name="underwear" required="required"/>
        Boxers
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="underwear" required="required"/>
        Briefs
      </label>
    </div>
  </div>
  <div class="form-group">
    <div class="checkbox">
      <label>
        <input type="checkbox" id="terms" data-error="Before you wreck yourself" required="required"/>
        Check yourself
      </label>
      <div class="help-block with-errors"></div>
    </div>
  </div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>

</body>
</html>
