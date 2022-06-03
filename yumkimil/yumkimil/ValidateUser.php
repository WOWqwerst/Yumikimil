<?php
class ValidateUser {
    private $user;
    private $passwd;

    private $socket;

    private $flag;
    private $message;

    public function __construct()
    {
        $this->user = "";
        $this->passwd = "";
        $this->message = "";
        $this->flag = false;
    }

    public function setUser($user) {
        $this->user = $user;
    }

    public function setPasswd($passwd) {
        $this->passwd = $passwd;
    }

    public function setSocket($socket) {
        $this->socket = $socket;
    }

    private function Validate() {
        // Se construye el query para validar que el usuario existe. Consulta en la tabla Usuario.

        $query = "select passwd
                  from alumno
                  where control like '$this->user'  and 
                        passwd like sha2('$this->passwd', 256);";

        $exist = $this->socket->query($query);

        if($exist->num_rows > 0) {
            $this->flag = true;
        }
        else {
            $this->flag = false;
            $this->message = "El usuario o la contraseña no son los correctos. Revise que los datos <br />
                              ingresados son los solicitados. Intente ingresarlos nuevamente.";
        }
        $exist->close();
    }

    public function isExist() {
        $this->Validate();
        return $this->flag;
    }

    public function Message() {
        return $this->message;
    }
}