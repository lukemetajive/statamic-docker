   <?php
   // filepath: /Users/lukemorrison/projects/statamic-docker-compose/vendor/autoload.php
   // Autoload file for Composer dependencies
   spl_autoload_register(function ($class) {
       $prefix = 'App\\';
       $base_dir = __DIR__ . '/../src/';
       $len = strlen($prefix);
       if (strncmp($prefix, $class, $len) !== 0) {
           return;
       }
       $relative_class = substr($class, $len);
       $file = $base_dir . str_replace('\\', '/', $relative_class) . '.php';
       if (file_exists($file)) {
           require $file;
       }
   });