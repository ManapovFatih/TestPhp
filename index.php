<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Форма регистрации</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container mt-4">
        <?php
            if(isset($_COOKIE["user"]) == 0):
        ?>
        <div class="row">
            <div class="col">
                <h1>Форма регистрации</h1>
                <form action="validation-form/check.php" method="post">
                    <input type="text" class="form-control" name="login" id="login" placeholder="Введите логин"><br>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Введите имя"><br>
                    <input type="password" class="form-control" name="pass" id="pass" placeholder="Введите пароль"><br>
                    <button class="btn btn-success" type="submit">Зарегистрировать</button>
                </form>
            </div>
            <div class="col">
                <h1>Форма авторизации</h1>
                <form action="validation-form/auth.php" method="post">
                    <input type="text" class="form-control" name="login" id="login" placeholder="Введите логин"><br>
                    <input type="password" class="form-control" name="pass" id="pass" placeholder="Введите пароль"><br>
                    <button class="btn btn-success" type="submit">Войти</button>
                </form>
            </div>
        </div>
        <?php
            else:
        ?>
        <p>Привет <?=$_COOKIE['user']?>. Чтобы выйти нажмите <a href="exit.php">здесь</a></p>
        <div class="container mt-4">
            <h1>Курс валют</h1>
            <div class="row">
                <div class="col">
                    <form action="validation-form/convert.php" method="get">
                        <input type="number" class="form-control" name="count" id="count" placeholder="Введите количество рублей"><br>
                        <div class="custom-select">
                            <?php
                                $mysql = new mysqli('localhost', 'root', '', 'register-bd'); 
                                $sql = "SELECT  name FROM valute";
                                $result = $mysql->query($sql);

                                echo "<select name='name'><option>Выбор валюты</option>";
                                foreach($result as $row) {
                                    echo "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
                                }
                                echo "</select>";
                                $mysql->close();
                            ?>               
                        </div><br>
                        <button class="btn btn-success" type="submit">Конвертировать</button><br>
                    </form>
                </div>
                <div class="col">
                    <form action="validation-form/convert1.php" method="get">
                        <input type="number" class="form-control" name="count" id="count" placeholder="Введите количество валюты"><br>
                        <div class="custom-select">
                            <?php
                                $mysql = new mysqli('localhost', 'root', '', 'register-bd'); 
                                $sql = "SELECT  name FROM valute";
                                $result = $mysql->query($sql);

                                echo "<select name='name'><option>Выбор валюты</option>";
                                foreach($result as $row) {
                                    echo "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
                                }
                                echo "</select>";
                            ?>               
                        </div><br>
                        <button class="btn btn-success" type="submit">Конвертировать</button><br>
                    </form>
                </div>
            </div>
        </div>
        <br>
        <?php           
           $mysql = new mysqli('localhost', 'root', '', 'register-bd');
           $time = time();
           $sql = "SELECT  `name`, `val`, `data update` FROM valute";
           $result = $mysql->query($sql);
           $res = mysqli_fetch_all($result);
           $update = ($time - $res[0][2]) - (3*60*60);
           if ($update >= 0){
                $file = simplexml_load_file("http://www.cbr.ru/scripts/XML_daily.asp?date_req=".date("d/m/Y"));
                $mysql->query("TRUNCATE TABLE `valute`");
                foreach ($file->Valute AS $el){
                    $nameval = strval($el->Name);
                    $valutes = floatval($el->Value);
                    $mysql->query("INSERT INTO `valute` (`name`, `val`, `data update`) VALUES('$nameval', '$valutes', '$time')");
                }
            }

            foreach($result as $row) {
                echo "<li>", "1 ", $row['name'], " = ", $row['val'], " рубля", "</li>";
            }
            echo "</select>";
            $mysql->close();

        ?>
        
        <?php
            endif;
        ?>
    </div>
    
</body>
</html>