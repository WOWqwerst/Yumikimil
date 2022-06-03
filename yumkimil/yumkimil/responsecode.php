<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Last-Modified" content="0">
    <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <link rel="shortcut icon" type="image/x-icon" href="Smartphone.ico" />
    <title>AHAU KIN :: 0.8.90</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
          crossorigin="anonymous">

    <link href="css/base.css" rel="stylesheet">
</head>

<body>

<br />
<form class="w3-container" method="post" action="request.php" name="alumno">
    <table>
        <caption class="alumno">
            Sistema Generador de Códigos :: 0.8.90 <br />
        </caption>

        <tbody>


        <?php
            $fecha = null;
            require "Connection.php";
            require "ValidateUser.php";
            require "CreateQR.php";
            require "data.php";

            $db = new Connection();

            $db->setUser($dbuser);
            $db->setPasswd($dbpasswd);
            $db->setServer($dbserver);
            $db->setSchema($dbschema);
            $db->setPort($dbport);

            $db->OpenConnection();
            if($db->isConnection()) {
                $user = new ValidateUser();
                $user->setUser($_REQUEST["usuario"]);
                $user->setPasswd($_REQUEST["passwd"]);
                $user->setSocket($db->getSocket());

                if($user->isExist()) {

                    $qr = new CreateQR();
                    $qr->setSocket($db->getSocket());
                    $qr->setUser($_REQUEST["usuario"]);
                    $qr->setPasswd($_REQUEST["passwd"]);
                    $qr->setQuarter($_REQUEST["ctrm"]);
                    $qr->setPeriod($_REQUEST["evaluacion"]);

                    if($qr->EnrolledStudent()) {
                        $fecha = $qr->DateForm();
                        $qr->CreateCode();
                        ?>
                    <!-- Lineas de separación -->
                    <tr>
                        <td class="vacios">&nbsp;</td>
                        <td class="vacios">&nbsp;</td>
                        <td class="vacios">&nbsp;</td>
                        <td class="vacios">&nbsp;</td>
                        <td class="vacios">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                    </tr>

                    <!-- Primer renglón :: Nombre completo del alumno -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="far fa-user" style="font-size:18px; color: #ff8500;"></i> &nbsp;
                                Alumna(o)
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="alumno"
                                   id="idUAlumno"
                                   value = "<?php print($qr->getAlumno()); ?>"
                                   readonly/>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                        <!-- Segundo renglón :: Grupo del alumno -->
                        <tr>
                            <td class="campos">&nbsp;</td>
                            <td colspan="4" class="campos">
                                <label>
                                    <i class="far fa-user" style="font-size:18px; color: #ff8500;"></i> &nbsp;
                                    Grupo
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td class="campos">&nbsp;</td>
                            <td class="campos" colspan="3">
                                <input type="text"
                                       class="w3-input"
                                       name="grupo"
                                       id="idGrupo"
                                       value = "<?php print($qr->getGrupo()); ?>"
                                       readonly/>
                            </td>
                            <td class="campos">
                                &nbsp;
                            </td>
                        </tr>

                    <!-- Tercer renglón :: Asignatura -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="far fa-bookmark" style="font-size:18px;color: #ff8500;"></i> &nbsp;
                                Asignatura
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="Asignatura"
                                   id="idAsignatura"
                                   value = "<?php print($qr->getAsignatura()); ?>"
                                   readonly/>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                    <!-- Cuarto renglón :: Turno -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <em class="far fa-clock" style="font-size:18px; color: #ff8500;"></em> &nbsp;
                                Turno
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="turno"
                                   id="idTurno"
                                   value = "<?php print($qr->getTurno()); ?>"
                                   readonly/>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                    <!-- Quinto renglón :: Periodo de evaluación -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="far fa-calendar" style="font-size:18px; color: #ff8500;"></i> &nbsp;
                                Periodo
                                de evaluación
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="evaluacion"
                                   id="idEvaluacion"
                                   value =  "<?php print($qr->getCuatrimestre()); ?>"
                                   readonly/>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                    <!-- Sexto renglón :: Tipo de evaluación -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="fas fa-pencil-alt" style="font-size:18px; color: #ff8500;"></i> &nbsp;
                                Tipo de
                                evaluación
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="tipo"
                                   id="idTipo"
                                   value = "<?php print($qr->getEvaluacion()); ?>"
                                   readonly/>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                    <!-- Séptimo renglón :: Firma electrónica del alumna(o) -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <i class="far fa-address-card" style="font-size:18px; color: #ff8500;"></i> &nbsp;
                            Clave
                            del
                            alumna(o):
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <textarea class="w3-input"
                                      name="codigo"
                                      id="idCodigo"
                                      readonly
                                      cols="35" rows="2"><?php print($qr->getCodigo()); ?></textarea>
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                    <!-- Octavo renglón :: Imagen QR del alumna(o) -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <i class="fas fa-qrcode" style="font-size:18px; color: #ff8500;"></i> &nbsp; QR del
                            alumna(o)
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <img  src= "<?php print($qr->getImageLink()); ?>" />
                        </td>
                        <td class="campos">
                            &nbsp;
                        </td>
                    </tr>

                <?php
            }
            else {
                ?>
                <!-- Mensaje de error -->
                <tr>
                    <td class="vacios">&nbsp;</td>
                    <td class="vacios">&nbsp;</td>
                    <td class="vacios">&nbsp;</td>
                    <td class="vacios">&nbsp;</td>
                    <td class="vacios">&nbsp;</td>
                </tr>

                <tr>
                    <td class="titulo" colspan="5">
                        <?php
                        print($qr->Message());
                        ?>
                    </td>
                </tr>
                <!-- Fin del mensaje de error -->
                <?php
            }
            $qr = null;
        }
        else {
            ?>
            <!-- Mensaje de error -->
            <tr>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
            </tr>

            <tr>
                <td class="titulo" colspan="5">
                    <?php
                    print($user->Message());
                    ?>
                </td>
            </tr>
            <!-- Fin del mensaje de error -->
            <?php
        }
        $user = null;
    }
    else {
        ?>
        <!-- Mensaje de error -->
        <tr>
            <td class="vacios">&nbsp;</td>
            <td class="vacios">&nbsp;</td>
            <td class="vacios">&nbsp;</td>
            <td class="vacios">&nbsp;</td>
            <td class="vacios">&nbsp;</td>
        </tr>


        <tr>
            <td class="titulo" colspan="5">
                <?php
                print($db->Message());
                ?>
            </td>
        </tr>
        <!-- Fin del mensaje de error -->
        <?php
    }
    $db->CloseConnection();
    $db = null;
    ?>
            </tbody>

        <tfoot>
            <!-- Lineas de separación -->
            <tr>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
            </tr>

            <!-- Fecha de creación -->

            <tr>
                <td class="campos">&nbsp;</td>
                <td class="campos" colspan="3">&nbsp;
                    Fecha y hora de creación:
                    <?php
                    print_r($fecha);
                    ?>
                </td>
                <td class="campos">&nbsp;</td>
            </tr>

            <tr>
                <td class="pie" colspan="5">
                    <div align="center">
                        Pedro López Urzúa&nbsp;&nbsp;:&nbsp;:&nbsp;&nbsp;:&nbsp;Yum Kimil&nbsp;:&nbsp;:&nbsp;Mayo / 2020
                        <img src="images/Mexico-01.png" width="32" height="32" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
                <td class="vacios">&nbsp;</td>
            </tr>
            <tr>
                <td class="vacios" colspan="5">
                    <a href="javascript:history.back()">Regresar a la página principal</a>
                </td>
            </tr>
        </tfoot>

    </table>
</form>

<br />
<br />

</body>
</html>