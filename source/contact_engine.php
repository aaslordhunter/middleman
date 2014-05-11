<?php

$EmailFrom = "aas.alexandra@gmail.com";
$EmailTo = "aas.alexandra@gmail.com";
$Subject = "Ali Flynn Aas - Contact Form";
$Name = Trim(stripslashes($_POST['Name']));
$Email = Trim(stripslashes($_POST['Email'])); 
$Message = Trim(stripslashes($_POST['Message'])); 

// prepare email body text
$Body = "";
$Body .= "Name: ";
$Body .= $Name;
$Body .= "\n";
$Body .= "Email: ";
$Body .= $Email;
$Body .= "\n";
$Body .= "Message: ";
$Body .= $Message;
$Body .= "\n";

// send email 
$success = mail($EmailTo, $Subject, $Body, "From: <$EmailFrom>");

// redirect to success page 
if ($success) {
  print "<meta http-equiv=\"refresh\" content=\"0;URL=index.html?success=true\">";
}

else {
  print "<meta http-equiv=\"refresh\" content=\"0;URL=index.html?success=false\">";
}
?>