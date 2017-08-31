<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <!-- template to file -->
    <instantiate from="root/src/app_package/MainActivity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/fragment/SimpleFragment.java" />   
    <instantiate from="root/res/layout/activity_main.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

    <!-- open file -->
    <#if generateLayout>
        <#include "../common/recipe_simple.xml.ftl" />
        <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>      
    </#if>
      
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>