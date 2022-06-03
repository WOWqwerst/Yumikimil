<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">
        <link rel="shortcut icon" type="image/x-icon" href="images/BeOS_blocks.ico" />
        <title>YUM KIMIL :: 0.8.90</title>
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
        <form form class="w3-container" method="post" action="responsecode.php" name="alumno">
            <table>
                <caption class="principal">
                    Sistema Generador de Códigos :: 0.8.90 <br />
                </caption>
                <tbody>

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

                    <!-- Primer renglón :: Número de control del alumno -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4"class="campos">
                            <label>
                                <i class="fa fa-user" style="font-size:18px; color: #ff8500;"></i> &nbsp; Usuario
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="text"
                                   class="w3-input"
                                   name="usuario"
                                   id="idUsuario"
                                   placeholder="Ingrese su número de control"
                                   pattern="[0-9]{5}"
                                   title="Sólo se aceptan números. Letras o símbolos no se permiten."
                                   required />
                        </td>
                        <td class="campos">
                            <div class="tooltip">
                                <a href="#"><i class="far fa-question-circle" style="font-size:18px; color: #cb491a;"></i></a>
                                <span class="tooltiptext">
                                    No confundir con su número de matrícula.
                                    Su número de control es de 5 dígitos.
                                </span>
                            </div>
                        </td>
                    </tr>


                    <!-- Segundo renglón :: Contraseña del alumno -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="fa fa-key" style="font-size:18px;color: #ff8500;"></i> &nbsp; Contraseña
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <input type="password"
                                   class="w3-input"
                                   name="passwd"
                                   id="idPasswd"
                                   placeholder="Ingrese su contraseña"
                                   title="Sólo se aceptan números. Letras o símbolos no se permiten."
                                   pattern="[0-9]{5}"
                                   required />
                        </td>
                        <td class="campos">
                            <div class="tooltip">
                                <a href="#"><i class="far fa-question-circle" style="font-size:18px; color: #cb491a;"></i></a>
                                <span class="tooltiptext">
                                    La contraseña para realizar el registro de su hoja de firmas es
                                    su número de control.
                                </span>
                            </div>
                        </td>
                    </tr>

                    <!-- Tercer renglón :: Ciclo escolar -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <em class="fa fa-calendar" style="font-size:18px; color: #ff8500;"></em> &nbsp; Ciclo escolar
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <select name="ctrm" id="idCtrm" required class="w3-select">
                                <option value="1">2019-3</option>
                                <option value="2">2020-1</option>
                                <option value="3">2020-2</option>
                                <option value="4">2020-3</option>
                            </select>
                        </td>
                        <td class="campos">
                            <div class="tooltip">
                                <a href="#"><i class="far fa-question-circle" style="font-size:18px; color: #cb491a;"></i></a>
                                <span class="tooltiptext">
                                    Seleccione el cuatrimestre que ha de cursar. Si no lo recuerda,
                                    en su tira de materias lo puede obtener.
                                </span>
                            </div>
                        </td>
                    </tr>

                    <!-- Cuarto renglón :: Periodo de evaluación -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td colspan="4" class="campos">
                            <label>
                                <i class="fa fa-book-open" style="font-size:18px; color: #ff8500;"></i> &nbsp; Periodo de evaluación
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <select name="evaluacion" id="idEvaluacion" required class="w3-select">
                                <option value="1">Parcial</option>
                                <option value="2">Final</option>
                                <option value="3">Extraordinaria</option>
                            </select>
                        </td>
                        <td class="campos">
                            <div class="tooltip">
                                <a href="#"><i class="far fa-question-circle" style="font-size:18px; color: #cb491a;"></i></a>
                                <span class="tooltiptext">
                                    Seleccione el periodo que se ha de evaluar en el periodo indicado.
                                </span>
                            </div>
                        </td>
                    </tr>

                    <!-- Botón para enviar información -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos" colspan="3">
                            <div align="center">
                                <input class="boton"
                                       type="submit"
                                       name="ingresar"
                                       id="idIngresar"
                                       value="Accesar"
                                />
                            </div>
                        </td>
                        <td class="campos">&nbsp;</td>
                    </tr>


                    <!-- Lineas de separación -->
                    <tr>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                        <td class="campos">&nbsp;</td>
                    </tr>

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
                    <tr>
                        <td class="pie" colspan="5">
                            <div align="center">
                                Pedro López Urzúa&nbsp;&nbsp;:&nbsp;:&nbsp;&nbsp;:&nbsp;Yum Kimil&nbsp;:&nbsp;:&nbsp;Mayo / 2020 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="images/Mexico-01.png" width="48" height="48" />
                            </div>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </form>
    </body>
</html>