<?php


class SystemInfo
{
    public function getPHPVersion()
    {
        usleep(200000);
        return phpversion();
    }
}