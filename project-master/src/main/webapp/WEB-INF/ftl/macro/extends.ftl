<#if !blocks??>
    <#assign blocks = {} />
</#if>

<#macro extends ftlPath>
<#--
Note that just like with #include, if name is relative, it's resolved based on the directory of the caller template,
not of this template(extends.ftl) that defines this macro(extends). As .get_optional_template resolves relative names
based on the current template, we had to convert the name to an absolute name based on the caller template before
passing it to it.
-->
    <#local ftlTemplate = .get_optional_template(ftlPath?absolute_template_name(.caller_template_name))>
    <#nested />
    <@ftlTemplate.include />
</#macro>

<#macro replace name>
    <#local value>
        <#nested />
    </#local>
    <#assign blocks += {name: value} />
</#macro>

<#macro block name>
    <#if blocks[name]??>
        ${blocks[name]}
    <#else>
        <#nested />
    </#if>
</#macro>