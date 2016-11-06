<?php


class Db
{
    protected $db;

    protected $user;

    protected $pass;

    public function __construct($db, $user, $pass)
    {
        $this->db = $db;
        $this->user = $user;
        $this->pass = $pass;
    }

    protected function connect()
    {
        usleep(500000);
        return new PDO("mysql:host=localhost;dbname={$this->db}", $this->user, $this->pass);
    }

    public function doQuery($query)
    {
        $conn = $this->connect();
        try {
            return $conn->query($query)->fetchAll();
        } catch (PDOException $e) {
            die ($e->getMessage());
        }
    }
}