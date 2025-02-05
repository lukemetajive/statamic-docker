<?php

require_once __DIR__ . '/autoload.php';

use Statamic\Facades\Site;
use Statamic\Statamic;

$app = Statamic::boot();

$app->run();