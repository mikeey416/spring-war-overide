<#-- @ftlroot "../../../../../../../project-master/src/main/webapp/WEB-INF/ftl" -->
<#import "/macro/extends.ftl" as layout />

<@layout.extends "base.ftl">
    <@layout.replace "title">
        Child App
    </@layout.replace>
    <@layout.replace "messageBlock">
        <div>This is the child code block</div>
    </@layout.replace>
</@layout.extends>