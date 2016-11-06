<?php


class Db
{
    protected $db;

    protected $user;

    protected $pass;

    protected $conn;

    public function __construct($db, $user, $pass)
    {
        $this->db = $db;
        $this->user = $user;
        $this->pass = $pass;
        $this->conn = new PDO(
            "mysql:host=localhost;dbname={$this->db}", $this->user, $this->pass
        );
        $this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    }

    public function doQuery($query)
    {
        try {
            return $this->conn->query($query)->fetchAll();
        } catch (PDOException $e) {
            die ($e->getMessage());
        }
    }
}