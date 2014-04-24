
<%@ page import="edu.hawaii.its.dcmd.inf.Manufacturer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <%--<g:sortableColumn property="id" title="${message(code: 'manufacturer.id.label', default: 'Id')}" />--%>

                            <g:sortableColumn property="name" title="${message(code: 'manufacturer.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="code" title="${message(code: 'manufacturer.code.label', default: 'Code')}" />                        
                        
                            <g:sortableColumn property="phone" title="${message(code: 'manufacturer.phone.label', default: 'Phone')}" />
                        
                            <g:sortableColumn property="fax" title="${message(code: 'manufacturer.fax.label', default: 'Fax')}" />
                        
                            <g:sortableColumn property="addressLine1" title="${message(code: 'manufacturer.addressLine1.label', default: 'Address Line1')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${manufacturerInstanceList}" status="i" var="manufacturerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <%--<td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "id")}</g:link></td>--%>
                        
                            <td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "code")}</g:link></td>
                        
                            <td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "name")}</g:link></td>
                        
                            <td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "phone")}</g:link></td>
                        
                            <td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "fax")}</g:link></td>
                        
                            <td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "addressLine1")}</g:link></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${manufacturerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
