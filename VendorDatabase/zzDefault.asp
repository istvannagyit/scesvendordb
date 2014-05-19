<%@LANGUAGE="VBSCRIPT"%>
<%
	' Uses free AspTear
	' Download AspTear to install on IIS server here:
	' http://www.alphasierrapapa.com/iisdev/components/asptear/
	' Already installed on IST-Prod6.nacs
    'ASP Classic "ActiveX component can't create object" error might need to Enable 32 bit in the AppPool (Advanced settings)
    'on error resume next
	' AspTear constants
	Const Request_POST = 1
	Const Request_GET = 2
	' Variables used in this routine:
	Dim strRetVal, strUrl
	Dim strIDCookieVal
	Dim arrRetVal, arrItem, arrGetVals
	Dim strUciNetId, strUciNetIdAge, strUciNetICreated, strUciNetIdIdle, strUciNetIdCampus, strUciNetIdAuthFail
	Dim strIDCookie
	Dim objTear
	' Create the AspTear object for getting info from login.uci.edu
	Set objTear = Server.CreateObject("SOFTWING.ASPtear")
    If Err.Number <> 0 Then
        strResponse1 = "Server returned error: " & Err.Number & "<br>" & Err.Description
        Err.Clear
        response.end
    End If
	' Get the login cookie if it's there
	strIDCookieVal = request.Cookies("ucinetid_auth")
	' Setup the URL to "check" the login
	strUrl = "http://login.uci.edu/ucinetid/webauth_check?ucinetid_auth=" & strIDCookieVal
	' Actually go to the login page and get the results back
	strRetVal = objTear.Retrieve(strUrl, Request_POST, "", "", "")
	' Testing output for debugging
	'Response.Write("strRetVal=" & strRetVal & "<br />")
    'response.end
	' Parse thru the return string to determine the results
	' The return string is a pair value string with line feed separators
	arrRetVal = Split(strRetVal, vbLf)
	For Each arrItem in arrRetVal
		If (arrItem <> "") Then
			arrGETVals = Split(arrItem, Chr(61))
			If arrGetVals(0) = "ucinetid" Then
				strUciNetId = arrGetVals(1)
                session("whoyouare") = strUciNetId
			ElseIf arrGetVals(0) = "age_in_seconds" Then
				strUciNetIdAge = arrGetVals(1)
			ElseIf arrGetVals(0) = "time_created" Then
				strUciNetICreated = arrGetVals(1)
			ElseIf arrGetVals(0) = "max_idle_time" Then
				strUciNetIdIdle = arrGetVals(1)
			ElseIf arrGetVals(0) = "campus_id" Then
				strUciNetIdCampus = arrGetVals(1)
                session("campusid") = strUciNetIdCampus
			ElseIf arrGetVals(0) = "auth_fail" Then
				strUciNetIdAuthFail = arrGetVals(1)
			End If
		End If
	Next
	' If no UCInetID is returned, then NOT logged in, Make em.
	If (strUciNetId = "") Then
		' This sends them to the NACS login page, more secure than using your own
        session.abandon
        Set objTear = nothing
        err.Clear
		Response.Redirect("https://login.uci.edu/ucinetid/webauth?return_url=http://aladdin.studentcenter.uci.edu/xkx/default.asp")
	Else
		' Falls thru to page below if login was successful
		' Or add your own redirect below to send them to the page of your choice
        Set objTear = nothing
        err.Clear
		Response.Redirect("http://aladdin.studentcenter.uci.edu/xkx/harvest.asp")
        'Response.Redirect("http://aladdin.studentcenter.uci.edu/xkx/menu.asp")
	End If
    
    err.Clear
	on error goto 0	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>webauth test</title>
</head>
<body>
<h2>Congratulations, you are logged in</h2>
<a href="https://login.uci.edu/ucinetid/webauth_logout?return_url=http://aladdin.studentcenter.uci.edu/pricematch/">Click here to logout</a>
<p>Here is the information about you that I got from Login:</p>
<ul>
	<li> UCInetID: <strong><%= strUciNetId %></strong> </li>
	<li> Age of your Login: <strong><%= strUciNetIdAge %></strong> </li>
	<li> Time you logged in: <strong><%= strUciNetICreated %></strong> </li>
	<li> Time you've been idle: <strong><%= strUciNetIdIdle %></strong> </li>
	<li> Your Campus ID: <strong><%= strUciNetIdCampus %></strong> </li>
</ul>
</body>
</html>
