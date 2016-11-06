<?php

require "Db.php";

class SyliusDb extends Db
{
    public function getFirstFromQueryResult($query)
    {
        try {
            $result = $this->doQuery($query);
            return $result[0];
        }
        catch (Exception $exception) {
        }
    }
}