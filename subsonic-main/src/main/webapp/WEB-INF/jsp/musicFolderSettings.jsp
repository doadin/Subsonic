<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="iso-8859-1" %>

<html><head>
    <%@ include file="head.jsp" %>
</head>
<body class="mainframe">

<c:import url="settingsHeader.jsp">
    <c:param name="cat" value="musicFolder"/>
</c:import>

<form method="post" action="musicFolderSettings.view">
<table class="indent">
    <tr>
        <th><fmt:message key="musicfoldersettings.name"/></th>
        <th><fmt:message key="musicfoldersettings.path"/></th>
        <th><fmt:message key="musicfoldersettings.enabled"/></th>
        <th><fmt:message key="common.delete"/></th>
    </tr>

    <c:forEach items="${model.musicFolders}" var="folder">
        <tr>
            <td><input type="text" name="name[${folder.id}]" size="20" value="${folder.name}"/></td>
            <td><input type="text" name="path[${folder.id}]" size="40" value="${folder.path.path}"/></td>
            <td align="center"><input type="checkbox" ${folder.enabled ? "checked" : ""} name="enabled[${folder.id}]" class="checkbox"/></td>
            <td align="center"><input type="checkbox" name="delete[${folder.id}]" class="checkbox"/></td>
        </tr>
    </c:forEach>

    <tr>
        <th colspan="4" align="left" style="padding-top:1em"><fmt:message key="musicfoldersettings.add"/></th>
    </tr>

    <tr>
        <td><input type="text" name="name" size="20"/></td>
        <td><input type="text" name="path" size="40"/></td>
        <td align="center"><input name="enabled" checked type="checkbox" class="checkbox"/></td>
        <td/>
    </tr>

    <tr>
        <td style="padding-top:2em" colspan="2" align="center"><input type="submit" value="<fmt:message key="common.save"/>"/></td>
        <td colspan="2"/>
    </tr>

</table>
</form>

<c:if test="${not empty model.error}">
    <p class="warning"><fmt:message key="${model.error}"/></p>
</c:if>

<c:if test="${model.reload}">
    <script type="text/javascript">
        parent.frames.upper.location.href="top.view?";
        parent.frames.left.location.href="left.view?";
    </script>
</c:if>

</body></html>