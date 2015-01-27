<!DOCTYPE html>
<html>
    {block name='head'}
    <head>

        {config_load file='smarty.conf' section='page'}
        <title>{block name='title'}{#title#}{/block}</title>
       
        {config_load file='smarty.conf' section='meta'}
        <meta name="og:type" content="Website"/>
        <meta name="og:image" content=""/>
        <meta name="og:title" content="{block name='metaTitle'}{#metaTitle#}{/block}"/>
        <meta name="og:description" content="{block name='metaDescription'}{#metaDescription#}{/block}"/>
    
        {* <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport"> *}
        {block name='js'}
        <!--[if lt IE 8]><script src="http://{$smarty.server.SERVER_NAME}/css/elegant/elegantlte-ie7.js"></script><![endif]-->
        <!--[if lt IE 8]><script src="http://{$smarty.server.SERVER_NAME}/css/pictonic/pictonic.min.js"></script><![endif]-->
        {/block}  
        
        {block name='css'}
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:500,700,400,200' rel='stylesheet' type='text/css'>
        <link href='http://{$smarty.server.SERVER_NAME}/css/elegant/elegantstyle.css' rel='stylesheet' type='text/css'>
        <link href='http://{$smarty.server.SERVER_NAME}/css/pictonic/pictonic.css' rel='stylesheet' type='text/css'>
        <link href='http://{$smarty.server.SERVER_NAME}/css/gridlock/fs.gridlock.ie.css' rel='stylesheet' type='text/css'>
        <link href='http://{$smarty.server.SERVER_NAME}/css/gridlock/fs.gridlock.css' rel='stylesheet' type='text/css'>
        <link href='http://{$smarty.server.SERVER_NAME}/css/custom.css' rel='stylesheet' type='text/css'>
        {* <link href='http://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'> *}
        {/block}

    </head>
    {/block}
    
    <body class="raleway gridlock">
        <div class="nav desktop-4">
            {block name='header'}
                {include 'parts/menu.tpl'}
            {/block}
        </div>
        <div class="content">
            <div class="row">
                <div class="mobile-3 tablet-3 desktop-4 centered pacifico light-blue mainTitle">What Da Serve ?!</div>
                <div class="mobile-3 tablet-3 desktop-4 centered">The dead simple app to know what's your serva</div>
            </div>
            {block name='content' nocache}
                
            {/block}
            {* <div class="row">{block name='footer'}{/block}</div> *}
        </div>
    </body>
</html>