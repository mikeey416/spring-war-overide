<#import "../macro/extends.ftl" as layout />
<html>
<head>
    <title><@layout.block "title">Parent App</@layout.block></title>
</head>
<body>
<h2>Hello World!</h2>
${(message!"")?html}
<br>
<@layout.block "messageBlock">
    <div>This is the standard code block</div>
</@layout.block>
</body>
</html>
