<?php

return [

    'ADMIN_ROUTE_NAME' => 'admin',

    'admin_email' => env('ADMIN_EMAIL'),
    'order_prefix' => 'SJ',

    'career_uid' => 'TTEO280S99ERCL',
    'career_admin_email' => 'admin.hrcafe@varuna.net',
    'carrer_secretkey' => 'c008195ade50d4aa0b74ba7c7211526c',

    'order_status_arr' => [
        'pending' => 'Pending',
        'confirmed' => 'Confirmed',
        'cancelled' => 'Cancelled',
        'shipped' => 'Shipped',
        'delivered' => 'Delivered',
        'failed' => 'Failed',
        'success' => 'Success',

    ],

    'category_arr' => [
        '1' => 'General',
        '2' => 'SC',
        '3' => 'ST',
        '4' => 'OBC',
    ],

    'payment_status_arr' => [
        'not_paid' => 'Not Paid',
        'paid'     => 'Paid',
        'refunded' => 'Refunded',
        'free'     => 'Free',
    ],
    'payment_method' => [
        'card' => 'Card',
        'paypal' => 'PayPal',
        'cash' => 'Cash',
    ],

    'img_extension' => ['jpg', 'jpeg', 'gif', 'png', 'JPG', 'JPEG', 'GIF', 'PNG'],

    'compare_scope' => [
        '=' => '=',
        '>' => '>',
        '<' => '<',
        '>=' => '>=',
        '<=' => '<='
    ],

    'currency_arr' => [
        'USD' => 'USD',
        'EUR' => 'EUR',
        'INR' => 'INR',
        'AUD' => 'AUD',
        'GBP' => 'GBP'
    ],

    'currency_symbol_arr' => [
        'USD' => "&#36;",
        'EUR' => "&#128;",
        'INR' => "&#x20B9;",
        'AUD' => "A&#36;",
        'GBP' => "&#163;"
    ],

    'product_stamps_arr' => [
        'selling_fast' => "Selling fast",
        'sold_out' => "Sold out",
        'free_shipping' => "Free-shipping"
    ],

    'device_types_arr' => [
        'desktop' => "Desktop",
        'mobile' => "Mobile"
    ],

    'products_sort_by_arr' => [
        'price_high_low' => 'Price: High to Low',
        'price_low_high' => 'Price: Low to High',
        'new' => 'What\'s new',
        'popularity' => 'Popularity',
        'discount' => 'Discount',
    ],

    'gst_arr' => [
        '5' => '5%',
        '12' => '12%',
    ],

    'input_types_arr' => [
        'text' => 'Text',
        'textarea' => 'Textarea',
        'checkbox' => 'Checkbox',
        'radio' => 'Radio',
        'file' => 'File',
        'email' => 'Email',
    ],

    'setting_types_arr' => [
        'website' => 'Website',
        'seo' => 'SEO',
        'social_links' => 'Social Links',
    ],

    'blog_type_arr' => [
        'blogs' => 'Blogs',
        'news' => 'News',
    ],

    'menu_link_type_arr' => [
        'internal' => 'Internal',
        'external' => 'External',
        'category' => 'Category',
        'blog' => 'Blog',
        'news' => 'News',
        'event' => 'Event',
        'event' => 'Event',
        'cms' => 'CMS Page',
    ],


    
];