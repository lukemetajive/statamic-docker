<?php

require __DIR__ . '/../statamic/index.php';

// Handle incoming requests
$app = require_once __DIR__ . '/../statamic/bootstrap/app.php';
$app->run();