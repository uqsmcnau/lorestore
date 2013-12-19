<%@ include file="/WEB-INF/jsp/emmetInclude.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <%@include file="/WEB-INF/jsp/secure/loginCommonHead.jsp" %>
    <script type="text/javascript">function setOpenIDUrl(url) {
        var node = document.getElementById('openid-url');
        node.value = url;
    }
    </script>
  </head>
<body class='opaque' onload='document.f.j_username.focus(); addRedirect();'
      style="height: auto; width: 550px; padding-top: 0px;">
<h3>Login with OpenID Identity</h3>
<p>You can also login using your credentials with a remote OpenID service.  Either
   click one of the common provider icons, or enter a provider URL or your 
   personal OpenID URL into the type-in the "OpenID URL" textbox.  When you 
   click 'login', you browser will be redirected to the OpenID service to check 
   your credentials, and to ask for your permission to use your identity in 
   conjunction with this site.</p>
<form name='oidf' action='${sitecontainer}/j_spring_openid_security_check' method='POST'>
 <img style='vertical-align: middle' src='${images}/google.png' alt='use Google'
      onclick='setOpenIDUrl("https://www.google.com/accounts/o8/id")'/>
 <img style='vertical-align: middle' src='${images}/yahoo.png' alt='use Yahoo'
      onclick='setOpenIDUrl("https://www.yahoo.com")'/>
 <table>
    <tr><td>OpenID URL:</td><td><input id='openid-url' type='text' name='openid_identifier' size='40'/></td></tr>
    <tr><td><input type='checkbox' name='_spring_security_remember_me'></td>
        <td>Remember me on this computer.</td></tr>
    <tr><td colspan='2'>
        <button name="submit" type="submit">Login</button>
        <button name="reset" type="reset">Reset</button></td></tr>
  </table>
</form>
<%@ include file="/WEB-INF/jsp/secure/siteLoginFootMessage.jsp" %>
</body>
</html>
