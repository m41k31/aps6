<html>
<head>
<title>Upload de arquivos</title>
</head>
<body>
<form enctype="multipart/form-data" action="index.php" method="POST">
    Enviar arquivo: <input name="file" type="file" />
    <input type="submit" value="Enviar arquivo" />
</form>
</body>
</html>
<?php
if(isset($_FILES['file'])) {
        echo '<pre>';
if (move_uploaded_file($_FILES['file']['tmp_name'], "files/" . $_FILES['file']['name'])) {
    echo "Arquivo enviado com sucesso.\n";
}

print_r($_FILES);

print "</pre>";
}
?>

