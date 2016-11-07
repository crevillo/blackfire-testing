<?php
/**
 * Created by PhpStorm.
 * User: carlosrevillo
 * Date: 6/11/16
 * Time: 12:54
 */

namespace tests;


use Blackfire\Bridge\PhpUnit\TestCaseTrait;
use Blackfire\Profile\Configuration;

class BlackFireTest extends \PHPUnit_Framework_TestCase
{
    use TestCaseTrait;

    /**
     * @group blackfire
     * @requires extension blackfire
     */
    public function testSomething()
    {
        $config = new Configuration();

        // define some assertions
        $config
            ->assert('main.wall_time < 100ms', 'WALL')
        ;

        $profile = $this->assertBlackfire($config, function () {
            file_get_contents('http://blackfire.local');
        });
    }
}