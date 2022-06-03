<?php
class CreateQR
{
    private $user;
    private $passwd;
    private $period;
    private $quarter;

    private $socket;
    private $message;
    private $flag;

    private $alumno;
    private $grupo;
    private $materia;
    private $turno;
    private $cuatrimestre;
    private $periodo;
    private $codigo;
    private $image;

    public function __construct()
    {
        $this->user = "";
        $this->passwd = "";
        $this->period = "";
        $this->quarter = "";

        $this->message = "";
        $this->flag = 0;

        $this->alumno = "";
        $this->grupo = "";
        $this->turno = "";
        $this->materia = "";
        $this->cuatrimestre = "";
        $this->periodo = "";
        $this->codigo = "";
        $this->image = "";
    }

    public function setUser($user)
    {
        $this->user = $user;
    }

    public function setPasswd($passwd)
    {
        $this->passwd = $passwd;
    }

    public function setPeriod($period)
    {
        $this->period = $period;
    }

    public function setQuarter($quarter)
    {
        $this->quarter = $quarter;
    }

    public function setSocket($socket)
    {
        $this->socket = $socket;
    }

    public function Message()
    {
        return $this->message;
    }

    public function EnrolledStudent()
    {
        // Se construye el query para verificar si el usuario ha sido dado de alta en el sistema
        // en los grupos que ha de impartir clase el profesor.
        $query = "SELECT c.idCurso
                  FROM alumno a, alumnocurso ac, curso c, cuatrimestre q
                  WHERE a.control = ac.alumno AND
                        ac.curso = c.idCurso  AND
                        c.cuatrimestre = q.clave AND			
                        c.cuatrimestre  = $this->quarter and
                        a.control like '$this->user';";

        $exist = $this->socket->query($query);

        if($exist) {
            $this->flag = 1;
        }
        else {
            $this->flag = 0;
            $this->message = "El usuario no ha sido dado de alta en el sistema. <br />
                              Ya sea que no este inscrito en el cuatrimestre solicitado, <br />
                              o por no aparecer en las listas oficiales de la institución. <br />
                              Acuda con el administrador del sistema para ver los <br />
                              detalles de este error.";
        }
        $exist->close();
        return $this->flag;
    }

    private function CodeStudent()
    {
        // Se construye el query para verificar si el usuario ha sido dado de alta en el sistema
        // en los grupos que ha de impartir clase el profesor.
        $query = "call sp_codestudent($this->quarter, $this->period, '$this->user', @existe);";
        $this->socket->query($query);
        $result = $this->socket->query('select @existe;');
        $exist = $result->fetch_assoc();

        print("Valor: " . $exist['@existe']);
        exit(0);

        return $exist['@existe'];
    }


    public function DateNow() {
        date_default_timezone_set("America/Mexico_City");
        // Construcción de la fecha y hora.
        $tiempo = new DateTime();
        $fecha = $tiempo->format("Ymd");
        return $fecha;
    }

    public function DateForm() {
        date_default_timezone_set("America/Mexico_City");
        // Construcción de la fecha y hora.
        $tiempo = new DateTime();
        $fecha = $tiempo->format("d/m/Y");
        $hora = $tiempo->format("H:i");
        $hoy = $fecha . ' :: ' . $hora;
        return $hoy;
    }

    public function CreateCode() {
        if($this->CodeStudent() == 0) {
            require "qrlib.php";
            $fecha = $this->DateNow();
            $PNG_IMG_DIR = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'alumnos' . DIRECTORY_SEPARATOR;
            $PNG_WEB_DIR = 'alumnos/';

            $filename = $PNG_IMG_DIR . $this->user . '.' . $fecha . '.' .  '0'. $this->period . '.png';
            $image = $PNG_WEB_DIR . $this->user . '.' . $fecha . '.'. '0' . $this->period. '.png';

            $errorCorrectionLevel = 'S';
            $matrixPointSize = 3;

            // Se extrae la información del alumno para crear la cadena de conversión
            // que ha de servir como llave de activación.
            $query = "SELECT
                        CONCAT( alumno.nombre, ' ', alumno.paterno, ' ', alumno.materno ) AS alumno,
                        grupo.clave AS grupo,
                        asignatura.nombre AS materia,
                        turno.nombre AS turno,
                        alumno.control AS control,
                        (SELECT nombre FROM evaluacion WHERE clave = $this->period) AS periodo,
                        cuatrimestre.nombre AS cuatrimestre,
                        alumnocurso.idAlumnoCurso AS indice
                     FROM
                        alumno,
                        alumnocurso,
                        curso,
                        cuatrimestre,
                        asignatura,
                        grupo,
                        turno
                     WHERE
                        alumno.control = alumnocurso.alumno AND
                        alumnocurso.curso = curso.idCurso AND
                        curso.cuatrimestre = cuatrimestre.clave AND
                        curso.asignatura = asignatura.clave AND
                        curso.turno = turno.clave AND
                        curso.grupo LIKE grupo.clave AND
                        cuatrimestre.clave = $this->quarter AND
                        alumno.control LIKE '$this->user'; ";

            $resultado = $this->socket->query($query);

            $datos = $resultado->fetch_row();

            // Se construye la cadena de conversión con los datos obtenidos de la base de datos.

            $alumno = $datos[4] . "\n" . $datos[0] . "\n" . $datos[1] . "\n" . $datos[2] . "\n" .
                      $datos[3] . "\n" . $this->DateForm() . "\n" . $datos[5] . "\n" . $datos[6] . "\n";



            $hash = hash('sha256', $alumno);
            $indice = $datos[7];
            $datos = null;
            $resultado->close();
            $resultado = null;

            // Inserción de la información del alumno para guardar la información
            // del alumno.
            $query = "insert into seguridad(alumno, fecha, llave, imagen, evaluacion) " .
                     "values($indice, Now(), '$hash', '$image', $this->period);";

            $this->socket->query($query);

            // Se construye la cadena de conversión.
            $alumno = $alumno . "\n" . $hash;

            // Creación de la imagen QR del alumno
            QRcode::png($alumno, $filename, $errorCorrectionLevel, $matrixPointSize, 2);

        }

        // Se asignan los valores almacenados para el usuario, una vez que se ha comprobado
        // que el alumno existe, o bien, que ha sido dado de alta en la tabla de codigos.
        $this->QueryQRCode();
   }

   private function QueryQRCode() {
       // Se extrae la información del alumno para crear la cadena de conversión
       // que ha de servir como llave de activación.
       $query = "SELECT
                    alumno.control AS control,
                    CONCAT( alumno.nombre, ' ', alumno.paterno, ' ', alumno.materno ) AS alumno,
                    evaluacion.nombre AS periodo,
                    grupo.clave AS grupo,
                    turno.nombre AS turno,
                    cuatrimestre.nombre AS cuatrimestre,
                    asignatura.nombre AS materia,
                    seguridad.llave AS codigo,
                    seguridad.imagen AS imagen,
                    cuatrimestre.clave AS idCuatrimestre,
                    evaluacion.clave AS idEvaluacion 
                 FROM
                    alumno
                    INNER JOIN alumnocurso ON alumno.control = alumnocurso.alumno
                    INNER JOIN curso ON alumnocurso.curso = curso.idCurso
                    INNER JOIN seguridad ON alumnocurso.idAlumnoCurso = seguridad.alumno
                    INNER JOIN evaluacion ON seguridad.evaluacion = evaluacion.clave
                    INNER JOIN grupo ON curso.grupo = grupo.clave
                    INNER JOIN turno ON curso.turno = turno.clave
                    INNER JOIN cuatrimestre ON curso.cuatrimestre = cuatrimestre.clave
                    INNER JOIN asignatura ON curso.asignatura = asignatura.clave
                 WHERE
                    alumno.control LIKE '$this->user' AND
                    cuatrimestre.clave = $this->quarter AND
                    evaluacion.clave = $this->period;";

       $resultado = $this->socket->query($query);
       $datos = $resultado->fetch_row();

       // Se construye la cadena de conversión con los datos obetnidos de la base de datos.

       //$alumno = $datos[4] . "\n" . $datos[0] . "\n" . $datos[1] . "\n" . $datos[2] . "\n" .
       //    $datos[3] . "\n" . $this->DateForm() . "\n" . $datos[5] . "\n" . $datos[6] . "\n";
       $this->alumno = $datos[1];
       $this->grupo =  $datos[3];
       $this->materia = $datos[6];
       $this->turno = $datos[4];
       $this->periodo = $datos[2];
       $this->cuatrimestre = $datos[5];
       $this->codigo = $datos[7];
       $this->image = $datos[8];

       $datos = null;
       $resultado->close();

   }

   public function getAlumno() {
        return $this->alumno;
   }

   public function getGrupo() {
        return $this->grupo;
   }

   public function getAsignatura() {
        return $this->materia;
   }

   public function getTurno() {
        return $this->turno;
   }

   public function getEvaluacion() {
        return $this->periodo;
   }

   public function getCuatrimestre() {
        return $this->cuatrimestre;
   }

   public function getCodigo() {
        return $this->codigo;
   }

   public function getImageLink() {
       return $this->image;
   }
}
