<?php

namespace tests;

use Blackfire\Bridge\PhpUnit\TestCaseTrait;
use Blackfire\Profile;

class IntegrationTest extends \PHPUnit_Framework_TestCase
{
    use TestCaseTrait;

    /**
     * @group blackfire
     * @requires extension blackfire
     */
    public function testSomething()
    {
        $config = new Profile\Configuration();

        // define some assertions
        $config
            ->assert('metrics.sql.queries.count < 5', 'SQL queries')
            ->assert('metrics.twig.render.count < 3', 'Rendered Twig templates')
            ->assert('metrics.twig.compile.count == 0', 'Twig compilation')
            ->assert("main.wall_time < 100ms", 'muy lento')
            // ...
        ;

        $profile = $this->assertBlackfire($config, function () {
            file_get_contents('http://127.0.0.1:8010');
        });
    }
}
