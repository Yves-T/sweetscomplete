<html>
<head>
    <title>PHPMailer - Sendmail basic test</title>
</head>
<body>
<?php
// point PHP to PEAR folder
ini_set('include_path', get_include_path() . PATH_SEPARATOR . '/usr/share/php/PEAR');

require_once('PHPMailer/class.phpmailer.php');
$address = "";
$mail = new PHPMailer(); // defaults to using php "mail()"
$body = file_get_contents('contents.html');
$body = str_ireplace('\\', '', $body);

$mail->AddReplyTo("name@yourdomain.com", "First Last");
$mail->SetFrom('name@yourdomain.com', 'First Last');
$mail->AddReplyTo("name@yourdomain.com", "First Last");
$mail->AddAddress($address);
$mail->Subject = "PHPMailer Test Subject via Sendmail, basic";
$mail->AltBody = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
$mail->MsgHTML($body);
$mail->AddAttachment("phpmailer.gif");      // attachment
$mail->AddAttachment("phpmailer_mini.gif"); // attachment
if (!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message sent!";
}
?>
</body>
</html>
