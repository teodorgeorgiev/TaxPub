<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.plazi.org/taxpub" prefix="tp"/>
    <pattern id="OccurenceData">
        <rule context="//tp:material-citation">
            <assert test="." >Level 1: Materials Citations present</assert>
            <assert test="tp:collecting-event">Level 2: Collecting Event present</assert>
            <assert test="tp:collecting-event/*">Level 3: Collecting Event parsed</assert>
        </rule>
    </pattern>
    <pattern id="NomenclaturalData">
        <rule context="//tp:nomenclature">tp:taxon-name-part
            <assert test="tp:tazon-name" >Level 1: <name path="child::tp:taxon-name"/> present</assert>
            <assert test="tp:tazon-name/tp:taxon-name-part" >Level 2: <name path="child::tp:taxon-name/taxon-name-part"/> present</assert>
        </rule>
    </pattern>
</schema>