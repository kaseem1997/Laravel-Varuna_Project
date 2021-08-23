<?php
$themeName = CustomHelper::getThemeName();
?>

@component('themes.'.$themeName.'.layouts.main')

@slot('title')
Be right back.
@endslot
@slot('headerBlock')
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

<style>
    html, body {
        height: 100%;
    }

    body {
        margin: 0;
        padding: 0;
        width: 100%;
        color: #B0BEC5;
        display: table;
        font-weight: 100;
        font-family: 'Lato', sans-serif;
    }

    .container {
        text-align: center;
        display: table-cell;
        vertical-align: middle;
    }

    .content {
        text-align: center;
        display: inline-block;
    }

    .title {
        font-size: 72px;
        margin-bottom: 40px;
    }
</style>
@endslot         
        <div class="container">
            <div class="content">
                <div class="title">Be right back.</div>
            </div>
        </div>
@endcomponent
