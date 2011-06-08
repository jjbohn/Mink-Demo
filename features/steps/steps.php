<?php

/**
 * Define your steps here with:
 *
 *   $steps->Given('/REGEX/', function($world) {
 *       // do something or throw exception
 *   });
 *
 */

$steps->Then('/^I should see the header "([^"]*)"$/', function($world, $arg1) {
    
	print_r($world);
throw new \Behat\Behat\Exception\Pending();
});
