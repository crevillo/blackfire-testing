<?php


class SystemInfo
{
    protected $phpVersion = null;

    public function getPHPVersion()
    {
        if (is_null($this->phpVersion)) {
            $this->phpVersion = phpversion();
        }

        return $this->phpVersion;


    }
}