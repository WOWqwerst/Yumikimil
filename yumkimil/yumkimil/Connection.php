<?php
class Connection
{
    private $dbuser;
    private $dbpasswd;
    private $dbschema;
    private $dbport;
    private $dbserver;

    private $message;
    private $socket;
    private $existe;

    public function __construct() {
        $this->dbuser = null;
        $this->dbpasswd = null;
        $this->dbserver = null;
        $this->dbschema = null;
        $this->dbport = null;

        $this->message = null;
        $this->socket = null;

        $this->existe= false;
    }

    public function setUser($user) {
        $this->dbuser = $user;
    }

    public function setPasswd($passwd) {
        $this->dbpasswd = $passwd;
    }

    public function setServer($server) {
        $this->dbserver = $server;
    }

    public function setSchema($schema) {
        $this->dbschema = $schema;
    }

    public function setPort($port) {
        $this->dbport = $port;
    }

    public function OpenConnection() {
        // Se crea la conexión a la base de datos.
        $this->socket = new mysqli($this->dbserver,
                                   $this->dbuser,
                                   $this->dbpasswd,
                                   $this->dbschema,
                                   $this->dbport);

        // Se establece el protocolo para la lectura y escritura de datos,
        // tanto en la base de datos, como en el navegador.
        //$this->socket->set_charset("utf8");
        if($this->socket->connect_error) {
            $this->message = "No es posible realizar la conexión a la base de datos. <br />" .
                             "Acuda con el administrador del Sistema para arreglar la falla.";
        }
        else
            $this->existe = true;
    }

    public function CloseConnection() {
        if($this->existe)
            $this->socket->close();
    }

    public function isConnection() {
        if($this->existe)
            return true;
        return false;
    }

    public function Message() {
        return $this->message;
    }

    public function getSocket() {
        return $this->socket;
    }
}