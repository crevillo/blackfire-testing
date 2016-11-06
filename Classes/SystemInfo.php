<?php


class SystemInfo
{
    protected $phpVersion = null;

    public function getPHPVersion()
    {
        if (is_null($this->phpVersion)) {
            usleep(200000);
            $this->phpVersion = phpversion();
        }

        return $this->phpVersion;


    }
}