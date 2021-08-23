<?php return array (
  'app' => 
  array (
    'name' => 'Varuna',
    'env' => 'local',
    'debug' => true,
    'url' => 'http://varuna',
    'timezone' => 'UTC',
    'locale' => 'en',
    'fallback_locale' => 'en',
    'key' => 'base64:OEJt13vVriGIC/guY/cRvZWB+g6B6FAlBgU/4YUJvGM=',
    'cipher' => 'AES-256-CBC',
    'log' => 'single',
    'log_level' => 'debug',
    'providers' => 
    array (
      0 => 'Illuminate\\Auth\\AuthServiceProvider',
      1 => 'Illuminate\\Broadcasting\\BroadcastServiceProvider',
      2 => 'Illuminate\\Bus\\BusServiceProvider',
      3 => 'Illuminate\\Cache\\CacheServiceProvider',
      4 => 'Illuminate\\Foundation\\Providers\\ConsoleSupportServiceProvider',
      5 => 'Illuminate\\Cookie\\CookieServiceProvider',
      6 => 'Illuminate\\Database\\DatabaseServiceProvider',
      7 => 'Illuminate\\Encryption\\EncryptionServiceProvider',
      8 => 'Illuminate\\Filesystem\\FilesystemServiceProvider',
      9 => 'Illuminate\\Foundation\\Providers\\FoundationServiceProvider',
      10 => 'Illuminate\\Hashing\\HashServiceProvider',
      11 => 'Illuminate\\Mail\\MailServiceProvider',
      12 => 'Illuminate\\Notifications\\NotificationServiceProvider',
      13 => 'Illuminate\\Pagination\\PaginationServiceProvider',
      14 => 'Illuminate\\Pipeline\\PipelineServiceProvider',
      15 => 'Illuminate\\Queue\\QueueServiceProvider',
      16 => 'Illuminate\\Redis\\RedisServiceProvider',
      17 => 'Illuminate\\Auth\\Passwords\\PasswordResetServiceProvider',
      18 => 'Illuminate\\Session\\SessionServiceProvider',
      19 => 'Illuminate\\Translation\\TranslationServiceProvider',
      20 => 'Illuminate\\Validation\\ValidationServiceProvider',
      21 => 'Illuminate\\View\\ViewServiceProvider',
      22 => 'Intervention\\Image\\ImageServiceProvider',
      23 => 'Bugsnag\\BugsnagLaravel\\BugsnagServiceProvider',
      24 => 'App\\Providers\\AppServiceProvider',
      25 => 'App\\Providers\\AuthServiceProvider',
      26 => 'App\\Providers\\EventServiceProvider',
      27 => 'App\\Providers\\RouteServiceProvider',
      28 => 'App\\Providers\\HelperServiceProvider',
      29 => 'Zizaco\\Entrust\\EntrustServiceProvider',
      30 => 'Maatwebsite\\Excel\\ExcelServiceProvider',
      31 => 'Mews\\Captcha\\CaptchaServiceProvider',
      32 => 'Barryvdh\\DomPDF\\ServiceProvider',
      33 => 'App\\Providers\\CartServiceProvider',
    ),
    'aliases' => 
    array (
      'App' => 'Illuminate\\Support\\Facades\\App',
      'Artisan' => 'Illuminate\\Support\\Facades\\Artisan',
      'Auth' => 'Illuminate\\Support\\Facades\\Auth',
      'Blade' => 'Illuminate\\Support\\Facades\\Blade',
      'Broadcast' => 'Illuminate\\Support\\Facades\\Broadcast',
      'Bugsnag' => 'Bugsnag\\BugsnagLaravel\\Facades\\Bugsnag',
      'Bus' => 'Illuminate\\Support\\Facades\\Bus',
      'Cache' => 'Illuminate\\Support\\Facades\\Cache',
      'Config' => 'Illuminate\\Support\\Facades\\Config',
      'Cookie' => 'Illuminate\\Support\\Facades\\Cookie',
      'Crypt' => 'Illuminate\\Support\\Facades\\Crypt',
      'CustomHelper' => 'App\\CustomHelperFacade',
      'DB' => 'Illuminate\\Support\\Facades\\DB',
      'Eloquent' => 'Illuminate\\Database\\Eloquent\\Model',
      'Event' => 'Illuminate\\Support\\Facades\\Event',
      'File' => 'Illuminate\\Support\\Facades\\File',
      'Gate' => 'Illuminate\\Support\\Facades\\Gate',
      'Hash' => 'Illuminate\\Support\\Facades\\Hash',
      'Image' => 'Intervention\\Image\\Facades\\Image',
      'Lang' => 'Illuminate\\Support\\Facades\\Lang',
      'Log' => 'Illuminate\\Support\\Facades\\Log',
      'Mail' => 'Illuminate\\Support\\Facades\\Mail',
      'Notification' => 'Illuminate\\Support\\Facades\\Notification',
      'Password' => 'Illuminate\\Support\\Facades\\Password',
      'Queue' => 'Illuminate\\Support\\Facades\\Queue',
      'Redirect' => 'Illuminate\\Support\\Facades\\Redirect',
      'Redis' => 'Illuminate\\Support\\Facades\\Redis',
      'Request' => 'Illuminate\\Support\\Facades\\Request',
      'Response' => 'Illuminate\\Support\\Facades\\Response',
      'Route' => 'Illuminate\\Support\\Facades\\Route',
      'Schema' => 'Illuminate\\Support\\Facades\\Schema',
      'Session' => 'Illuminate\\Support\\Facades\\Session',
      'Storage' => 'Illuminate\\Support\\Facades\\Storage',
      'URL' => 'Illuminate\\Support\\Facades\\URL',
      'Validator' => 'Illuminate\\Support\\Facades\\Validator',
      'View' => 'Illuminate\\Support\\Facades\\View',
      'Entrust' => 'Zizaco\\Entrust\\EntrustFacade',
      'Excel' => 'Maatwebsite\\Excel\\Facades\\Excel',
      'Captcha' => 'Mews\\Captcha\\Facades\\Captcha',
      'PDF' => 'Barryvdh\\DomPDF\\Facade',
      'Cart' => 'App\\CustomCartFacade',
    ),
  ),
  'auth' => 
  array (
    'defaults' => 
    array (
      'guard' => 'web',
      'passwords' => 'users',
    ),
    'guards' => 
    array (
      'web' => 
      array (
        'driver' => 'session',
        'provider' => 'users',
      ),
      'api' => 
      array (
        'driver' => 'token',
        'provider' => 'users',
      ),
      'admin' => 
      array (
        'driver' => 'session',
        'provider' => 'admins',
      ),
    ),
    'providers' => 
    array (
      'users' => 
      array (
        'driver' => 'eloquent',
        'model' => 'App\\User',
        'table' => 'users',
      ),
      'admins' => 
      array (
        'driver' => 'eloquent',
        'model' => 'App\\Admin',
        'table' => 'admins',
      ),
    ),
    'passwords' => 
    array (
      'users' => 
      array (
        'provider' => 'users',
        'table' => 'password_resets',
        'expire' => 60,
      ),
    ),
  ),
  'broadcasting' => 
  array (
    'default' => 'log',
    'connections' => 
    array (
      'pusher' => 
      array (
        'driver' => 'pusher',
        'key' => NULL,
        'secret' => NULL,
        'app_id' => NULL,
        'options' => 
        array (
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
      ),
      'log' => 
      array (
        'driver' => 'log',
      ),
      'null' => 
      array (
        'driver' => 'null',
      ),
    ),
  ),
  'bugsnag' => 
  array (
    'api_key' => '',
    'app_type' => NULL,
    'app_version' => NULL,
    'batch_sending' => NULL,
    'endpoint' => NULL,
    'filters' => 
    array (
      0 => 'password',
    ),
    'hostname' => NULL,
    'proxy' => 
    array (
    ),
    'project_root' => NULL,
    'project_root_regex' => NULL,
    'strip_path' => NULL,
    'strip_path_regex' => NULL,
    'query' => true,
    'bindings' => false,
    'release_stage' => NULL,
    'notify_release_stages' => NULL,
    'send_code' => true,
    'callbacks' => true,
    'user' => true,
    'logger_notify_level' => NULL,
    'auto_capture_sessions' => false,
    'session_endpoint' => NULL,
    'build_endpoint' => NULL,
  ),
  'cache' => 
  array (
    'default' => 'array',
    'stores' => 
    array (
      'apc' => 
      array (
        'driver' => 'apc',
      ),
      'array' => 
      array (
        'driver' => 'array',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'cache',
        'connection' => NULL,
      ),
      'file' => 
      array (
        'driver' => 'file',
        'path' => '/home/varunaehostinguk/varuna_files/storage/framework/cache/data',
      ),
      'memcached' => 
      array (
        'driver' => 'memcached',
        'persistent_id' => NULL,
        'sasl' => 
        array (
          0 => NULL,
          1 => NULL,
        ),
        'options' => 
        array (
        ),
        'servers' => 
        array (
          0 => 
          array (
            'host' => '127.0.0.1',
            'port' => 11211,
            'weight' => 100,
          ),
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
      ),
    ),
    'prefix' => 'laravel',
  ),
  'captcha' => 
  array (
    'characters' => '2346789abcdefghjmnpqrtuxyzABCDEFGHJMNPQRTUXYZ',
    'default' => 
    array (
      'length' => 5,
      'width' => 120,
      'height' => 36,
      'quality' => 90,
    ),
    'math' => 
    array (
      'length' => 9,
      'width' => 120,
      'height' => 36,
      'quality' => 90,
      'math' => true,
    ),
    'flat' => 
    array (
      'length' => 6,
      'width' => 160,
      'height' => 46,
      'quality' => 90,
      'lines' => 6,
      'bgImage' => false,
      'bgColor' => '#ecf2f4',
      'fontColors' => 
      array (
        0 => '#2c3e50',
        1 => '#c0392b',
        2 => '#16a085',
        3 => '#c0392b',
        4 => '#8e44ad',
        5 => '#303f9f',
        6 => '#f57c00',
        7 => '#795548',
      ),
      'contrast' => -5,
    ),
    'mini' => 
    array (
      'length' => 3,
      'width' => 60,
      'height' => 32,
    ),
    'inverse' => 
    array (
      'length' => 5,
      'width' => 120,
      'height' => 36,
      'quality' => 90,
      'sensitive' => true,
      'angle' => 12,
      'sharpen' => 10,
      'blur' => 2,
      'invert' => true,
      'contrast' => -5,
    ),
    'custom' => 
    array (
      'length' => 5,
      'width' => 120,
      'height' => 36,
      'quality' => 90,
      'lines' => -1,
      'angle' => 0,
      'bgImage' => false,
      'bgColor' => '#ddd',
      'fontColors' => 
      array (
        0 => '#333',
      ),
    ),
  ),
  'custom' => 
  array (
    'ADMIN_ROUTE_NAME' => 'admin',
    'admin_email' => 'info@varuna.com',
    'order_prefix' => 'SJ',
    'career_uid' => 'TTEO280S99ERCL',
    'career_admin_email' => 'admin.hrcafe@varuna.net',
    'carrer_secretkey' => 'c008195ade50d4aa0b74ba7c7211526c',
    'order_status_arr' => 
    array (
      'pending' => 'Pending',
      'confirmed' => 'Confirmed',
      'cancelled' => 'Cancelled',
      'shipped' => 'Shipped',
      'delivered' => 'Delivered',
      'failed' => 'Failed',
      'success' => 'Success',
    ),
    'category_arr' => 
    array (
      1 => 'General',
      2 => 'SC',
      3 => 'ST',
      4 => 'OBC',
    ),
    'payment_status_arr' => 
    array (
      'not_paid' => 'Not Paid',
      'paid' => 'Paid',
      'refunded' => 'Refunded',
      'free' => 'Free',
    ),
    'payment_method' => 
    array (
      'card' => 'Card',
      'paypal' => 'PayPal',
      'cash' => 'Cash',
    ),
    'img_extension' => 
    array (
      0 => 'jpg',
      1 => 'jpeg',
      2 => 'gif',
      3 => 'png',
      4 => 'JPG',
      5 => 'JPEG',
      6 => 'GIF',
      7 => 'PNG',
    ),
    'compare_scope' => 
    array (
      '=' => '=',
      '>' => '>',
      '<' => '<',
      '>=' => '>=',
      '<=' => '<=',
    ),
    'currency_arr' => 
    array (
      'USD' => 'USD',
      'EUR' => 'EUR',
      'INR' => 'INR',
      'AUD' => 'AUD',
      'GBP' => 'GBP',
    ),
    'currency_symbol_arr' => 
    array (
      'USD' => '&#36;',
      'EUR' => '&#128;',
      'INR' => '&#x20B9;',
      'AUD' => 'A&#36;',
      'GBP' => '&#163;',
    ),
    'product_stamps_arr' => 
    array (
      'selling_fast' => 'Selling fast',
      'sold_out' => 'Sold out',
      'free_shipping' => 'Free-shipping',
    ),
    'device_types_arr' => 
    array (
      'desktop' => 'Desktop',
      'mobile' => 'Mobile',
    ),
    'products_sort_by_arr' => 
    array (
      'price_high_low' => 'Price: High to Low',
      'price_low_high' => 'Price: Low to High',
      'new' => 'What\'s new',
      'popularity' => 'Popularity',
      'discount' => 'Discount',
    ),
    'gst_arr' => 
    array (
      5 => '5%',
      12 => '12%',
    ),
    'input_types_arr' => 
    array (
      'text' => 'Text',
      'textarea' => 'Textarea',
      'checkbox' => 'Checkbox',
      'radio' => 'Radio',
      'file' => 'File',
      'email' => 'Email',
    ),
    'setting_types_arr' => 
    array (
      'website' => 'Website',
      'seo' => 'SEO',
      'social_links' => 'Social Links',
    ),
    'blog_type_arr' => 
    array (
      'blogs' => 'Blogs',
      'news' => 'News',
    ),
    'menu_link_type_arr' => 
    array (
      'internal' => 'Internal',
      'external' => 'External',
      'category' => 'Category',
      'blog' => 'Blog',
      'news' => 'News',
      'event' => 'Event',
      'cms' => 'CMS Page',
    ),
  ),
  'database' => 
  array (
    'default' => 'mysql',
    'connections' => 
    array (
      'sqlite' => 
      array (
        'driver' => 'sqlite',
        'database' => 'varunaeh_db_new',
        'prefix' => '',
      ),
      'mysql' => 
      array (
        'driver' => 'mysql',
        'host' => 'localhost',
        'port' => '3306',
        'database' => 'varunaeh_db_new',
        'username' => 'varunaeh_user',
        'password' => 'qTsp)ilSMMX7',
        'unix_socket' => '',
        'charset' => 'utf8mb4',
        'collation' => 'utf8mb4_unicode_ci',
        'prefix' => '',
        'strict' => false,
        'engine' => false,
        'modes' => 
        array (
        ),
      ),
      'pgsql' => 
      array (
        'driver' => 'pgsql',
        'host' => 'localhost',
        'port' => '3306',
        'database' => 'varunaeh_db_new',
        'username' => 'varunaeh_user',
        'password' => 'qTsp)ilSMMX7',
        'charset' => 'utf8',
        'prefix' => '',
        'schema' => 'public',
        'sslmode' => 'prefer',
      ),
      'sqlsrv' => 
      array (
        'driver' => 'sqlsrv',
        'host' => 'localhost',
        'port' => '3306',
        'database' => 'varunaeh_db_new',
        'username' => 'varunaeh_user',
        'password' => 'qTsp)ilSMMX7',
        'charset' => 'utf8',
        'prefix' => '',
      ),
    ),
    'migrations' => 'migrations',
    'redis' => 
    array (
      'client' => 'predis',
      'default' => 
      array (
        'host' => '127.0.0.1',
        'password' => NULL,
        'port' => '6379',
        'database' => 0,
      ),
    ),
  ),
  'entrust' => 
  array (
    'role' => 'App\\Role',
    'roles_table' => 'roles',
    'permission' => 'App\\Permission',
    'permissions_table' => 'permissions',
    'permission_role_table' => 'permission_role',
    'role_user_table' => 'role_user',
    'user_foreign_key' => 'user_id',
    'role_foreign_key' => 'role_id',
  ),
  'filesystems' => 
  array (
    'default' => 'local',
    'cloud' => 's3',
    'disks' => 
    array (
      'local' => 
      array (
        'driver' => 'local',
        'root' => '/home/varunaehostinguk/varuna_files/storage/app',
      ),
      'public' => 
      array (
        'driver' => 'local',
        'root' => '/home/varunaehostinguk/varuna_files/storage/app/public',
        'url' => 'http://varuna/storage',
        'visibility' => 'public',
      ),
      'uploads' => 
      array (
        'driver' => 'local',
        'root' => '/home/varunaehostinguk/varuna_files/public/uploads',
        'visibility' => 'public',
      ),
      's3' => 
      array (
        'driver' => 's3',
        'key' => '',
        'secret' => '',
        'region' => 'us-west-1',
        'bucket' => '',
      ),
    ),
  ),
  'image' => 
  array (
    'driver' => 'gd',
  ),
  'indipay' => 
  array (
    'gateway' => 'Mocker',
    'testMode' => true,
    'ccavenue' => 
    array (
      'merchantId' => '',
      'accessCode' => '',
      'workingKey' => '',
      'redirectUrl' => 'order/response',
      'cancelUrl' => 'order/response',
      'currency' => 'INR',
      'language' => 'EN',
    ),
    'payumoney' => 
    array (
      'merchantKey' => '',
      'salt' => '',
      'workingKey' => '',
      'successUrl' => 'indipay/response',
      'failureUrl' => 'indipay/response',
    ),
    'ebs' => 
    array (
      'account_id' => '',
      'secretKey' => '',
      'return_url' => 'indipay/response',
    ),
    'citrus' => 
    array (
      'vanityUrl' => '',
      'secretKey' => '',
      'returnUrl' => 'indipay/response',
      'notifyUrl' => 'indipay/response',
    ),
    'instamojo' => 
    array (
      'api_key' => '',
      'auth_token' => '',
      'redirectUrl' => 'indipay/response',
    ),
    'mocker' => 
    array (
      'service' => 'default',
      'redirect_url' => 'indipay/response',
    ),
    'remove_csrf_check' => 
    array (
      0 => 'indipay/response',
    ),
  ),
  'mail' => 
  array (
    'driver' => 'sendmail',
    'host' => '192.168.1.10',
    'port' => '25',
    'from' => 
    array (
      'address' => 'hello@example.com',
      'name' => 'Example',
    ),
    'encryption' => NULL,
    'username' => '',
    'password' => '',
    'sendmail' => '/usr/sbin/sendmail -bs',
    'markdown' => 
    array (
      'theme' => 'default',
      'paths' => 
      array (
        0 => '/home/varunaehostinguk/varuna_files/resources/views/vendor/mail',
      ),
    ),
  ),
  'modules' => 
  array (
    'allowed' => 
    array (
      0 => 'banners',
      1 => 'cms',
      2 => 'blogs_categories',
      3 => 'blogs',
      4 => 'images',
      5 => 'videos',
      6 => 'settings',
      7 => 'enquiries',
      8 => 'career_categories',
      9 => 'careers',
      10 => 'case-studies',
      11 => 'media',
    ),
  ),
  'queue' => 
  array (
    'default' => 'sync',
    'connections' => 
    array (
      'sync' => 
      array (
        'driver' => 'sync',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'jobs',
        'queue' => 'default',
        'retry_after' => 90,
      ),
      'beanstalkd' => 
      array (
        'driver' => 'beanstalkd',
        'host' => 'localhost',
        'queue' => 'default',
        'retry_after' => 90,
      ),
      'sqs' => 
      array (
        'driver' => 'sqs',
        'key' => 'your-public-key',
        'secret' => 'your-secret-key',
        'prefix' => 'https://sqs.us-east-1.amazonaws.com/your-account-id',
        'queue' => 'your-queue-name',
        'region' => 'us-east-1',
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
        'queue' => 'default',
        'retry_after' => 90,
      ),
    ),
    'failed' => 
    array (
      'database' => 'mysql',
      'table' => 'failed_jobs',
    ),
  ),
  'sentry' => 
  array (
    'dsn' => '',
    'breadcrumbs.sql_bindings' => true,
    'user_context' => true,
  ),
  'services' => 
  array (
    'mailgun' => 
    array (
      'domain' => NULL,
      'secret' => NULL,
    ),
    'ses' => 
    array (
      'key' => NULL,
      'secret' => NULL,
      'region' => 'us-east-1',
    ),
    'sparkpost' => 
    array (
      'secret' => NULL,
    ),
    'stripe' => 
    array (
      'model' => 'App\\User',
      'key' => NULL,
      'secret' => NULL,
    ),
  ),
  'session' => 
  array (
    'driver' => 'file',
    'lifetime' => 120,
    'expire_on_close' => false,
    'encrypt' => false,
    'files' => '/home/varunaehostinguk/varuna_files/storage/framework/sessions',
    'connection' => NULL,
    'table' => 'sessions',
    'store' => NULL,
    'lottery' => 
    array (
      0 => 2,
      1 => 100,
    ),
    'cookie' => 'laravel_session',
    'path' => '/',
    'domain' => NULL,
    'secure' => false,
    'http_only' => true,
    'same_site' => NULL,
  ),
  'shopping_cart' => 
  array (
    'format_numbers' => false,
    'decimals' => 0,
    'dec_point' => '.',
    'thousands_sep' => ',',
    'storage' => NULL,
    'events' => NULL,
  ),
  'siteconfig' => 1,
  'trustedproxy' => 
  array (
    'proxies' => 
    array (
      0 => '192.168.1.10',
    ),
    'headers' => 
    array (
      1 => 'FORWARDED',
      2 => 'X_FORWARDED_FOR',
      4 => 'X_FORWARDED_HOST',
      8 => 'X_FORWARDED_PROTO',
      16 => 'X_FORWARDED_PORT',
    ),
  ),
  'view' => 
  array (
    'paths' => 
    array (
      0 => '/home/varunaehostinguk/varuna_files/resources/views',
    ),
    'compiled' => '/home/varunaehostinguk/varuna_files/storage/framework/views',
  ),
  'dompdf' => 
  array (
    'show_warnings' => false,
    'orientation' => 'portrait',
    'defines' => 
    array (
      'font_dir' => '/home/varunaehostinguk/varuna_files/storage/fonts/',
      'font_cache' => '/home/varunaehostinguk/varuna_files/storage/fonts/',
      'temp_dir' => '/tmp',
      'chroot' => '/home/varunaehostinguk/varuna_files',
      'enable_font_subsetting' => false,
      'pdf_backend' => 'CPDF',
      'default_media_type' => 'screen',
      'default_paper_size' => 'a4',
      'default_font' => 'serif',
      'dpi' => 96,
      'enable_php' => false,
      'enable_javascript' => true,
      'enable_remote' => true,
      'font_height_ratio' => 1.100000000000000088817841970012523233890533447265625,
      'enable_html5_parser' => false,
    ),
  ),
  'excel' => 
  array (
    'exports' => 
    array (
      'chunk_size' => 1000,
      'pre_calculate_formulas' => false,
      'csv' => 
      array (
        'delimiter' => ',',
        'enclosure' => '"',
        'line_ending' => '
',
        'use_bom' => false,
        'include_separator_line' => false,
        'excel_compatibility' => false,
      ),
    ),
    'imports' => 
    array (
      'read_only' => true,
      'heading_row' => 
      array (
        'formatter' => 'slug',
      ),
      'csv' => 
      array (
        'delimiter' => ',',
        'enclosure' => '"',
        'escape_character' => '\\',
        'contiguous' => false,
        'input_encoding' => 'UTF-8',
      ),
    ),
    'extension_detector' => 
    array (
      'xlsx' => 'Xlsx',
      'xlsm' => 'Xlsx',
      'xltx' => 'Xlsx',
      'xltm' => 'Xlsx',
      'xls' => 'Xls',
      'xlt' => 'Xls',
      'ods' => 'Ods',
      'ots' => 'Ods',
      'slk' => 'Slk',
      'xml' => 'Xml',
      'gnumeric' => 'Gnumeric',
      'htm' => 'Html',
      'html' => 'Html',
      'csv' => 'Csv',
      'tsv' => 'Csv',
      'pdf' => 'Dompdf',
    ),
    'value_binder' => 
    array (
      'default' => 'Maatwebsite\\Excel\\DefaultValueBinder',
    ),
    'transactions' => 
    array (
      'handler' => 'db',
    ),
    'temporary_files' => 
    array (
      'local_path' => '/tmp',
      'remote_disk' => NULL,
      'remote_prefix' => NULL,
    ),
  ),
  'tinker' => 
  array (
    'commands' => 
    array (
    ),
    'dont_alias' => 
    array (
      0 => 'App\\Nova',
    ),
  ),
);
