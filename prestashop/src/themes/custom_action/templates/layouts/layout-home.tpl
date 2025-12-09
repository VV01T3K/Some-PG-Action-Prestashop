{include file='_partials/helpers.tpl'}

<!doctype html>
<html lang="{$language.locale}">

<head>
    {block name='head'}
        {include file='_partials/head.tpl'}
    {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}">

    {block name='hook_after_body_opening_tag'}
        {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <header id="header">
        {block name='header'}
            {include file='_partials/header.tpl'}
        {/block}
    </header>

    <main class="relative flex flex-1 flex-col" style="min-height: 75vh; min-height: 75dvh;">
        {block name="content"}
            <p>Hello world! This is HTML5 Boilerplate.</p>
        {/block}
    </main>

    <footer id="footer" class="js-footer">
        {block name="footer"}
            {include file="_partials/footer.tpl"}
        {/block}
    </footer>

    {block name='javascript_bottom'}
        {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
        {hook h='displayBeforeBodyClosingTag'}
    {/block}
</body>

</html>