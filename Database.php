<?php

// connect to our MySQL database - pdo
class Database
{
    public $connection;
    public function __construct()
    {
        $dsn = "mysql:host=127.0.0.1;port=3306;dbname=notes;charset=utf8mb4";
        $user = "root";
        $pass = "secret";

        $this->connection = new PDO($dsn, $user, $pass);
    }
    public function query($query)
    {
        // Prepare to send the query to the DB.
        $statement = $this->connection->prepare($query);
        $statement->execute();

        // Fetch single array
        return $statement;
    }
}