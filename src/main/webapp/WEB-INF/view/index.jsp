<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">

function signinCallback(authResult) {
  if (authResult['status']['signed_in']) {
    document.getElementById('signinButton').setAttribute('style', 'display: none');
  } else {
    console.log('Sign-in state: ' + authResult['error']);
  }
}
	
/**
* Insert new file.
*
* @param {File} fileData File object to read data from.
* @param {Function} callback Function to call when the request is complete.
*/

function insertFileDrive() {

 console.log('exportando');
 var csvData = $("#csv").val();

 const boundary = '-------314159265358979323846';
 const delimiter = "\r\n--" + boundary + "\r\n";
 const close_delim = "\r\n--" + boundary + "--";

//csvData = replaceAll(csvData,"\"","");
//csvData = csvData.replace(/{goal_csv_aspas}/g, '"');
//csvData = csvData.replace(/{goal_csv_breakline}/g, '\r\n');

 var request = gapi.client.request({
 'path': '/upload/drive/v2/files?convert=true',
 'method': 'POST',
 'params': {'uploadType': 'media', 'convert' : 'true'},
 'headers': {
 'Content-Type': 'text/csv'
 },
 'body': csvData
 });

 var callback = function(file) {
   $("#loadingAlert").fadeOut();
   var fileURL = file.alternateLink;
   window.open(fileURL, '','fullscreen=1,top=0,left=0,menubar=0,toolbar=0,location=0,status=0,scrollbars=yes,titlebar=0;');
 };

 $("#loadingAlert").fadeIn();
 request.execute(callback);
}
</script>

<span id="signinButton">
  <span
    class="g-signin"
    data-callback="signinCallback"
    data-clientid="756755702930.apps.googleusercontent.com"
    data-cookiepolicy="single_host_origin"
    data-requestvisibleactions="http://schemas.google.com/AddActivity"
    data-scope="https://www.googleapis.com/auth/plus.login
    https://www.googleapis.com/auth/drive.file
    https://www.googleapis.com/auth/userinfo.email">
  </span>
</span>
<a hlink="#" onclick='javascript: insertFileDrive();'>exportar</a>

<input id="csv" hidden="true" value="nome;login;\r\nMarcos;mvidolin" />

<br />
