<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
    <%@ include file="head.jsp" %>
</head>

<body class="bgcolor2 topframe" style="margin:0.4em 1em 0 1em">

<fmt:message key="top.home" var="home"/>
<fmt:message key="top.now_playing" var="nowPlaying"/>
<fmt:message key="top.starred" var="starred"/>
<fmt:message key="top.settings" var="settings"/>
<fmt:message key="top.status" var="status"/>
<fmt:message key="top.podcast" var="podcast"/>
<fmt:message key="top.more" var="more"/>
<fmt:message key="top.help" var="help"/>
<fmt:message key="top.search" var="search"/>

<table style="margin:0"><tr valign="middle">
    <td style="padding-right:2em"><a href="help.view?" target="main"><img src="<spring:theme code="logoImage"/>" title="${help}" alt=""></a></td>

    <c:if test="${not model.musicFoldersExist}">
        <td style="padding-right:2em">
            <p class="warning"><fmt:message key="top.missing"/></p>
        </td>
    </c:if>

    <td>
        <table><tr align="center">
            <td style="min-width:4em;padding-right:1.5em">
                <a href="home.view?" target="main"><img src="<spring:theme code="homeImage"/>" title="${home}" alt="${home}"></a>
                <div class="topHeader"><a href="home.view?" target="main">${home}</a></div>
            </td>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="nowPlaying.view?" target="main"><img src="<spring:theme code="nowPlayingImage"/>" title="${nowPlaying}" alt="${nowPlaying}"></a>
                <div class="topHeader"><a href="nowPlaying.view?" target="main">${nowPlaying}</a></div>
            </td>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="starred.view?" target="main"><img src="<spring:theme code="starredImage"/>" title="${starred}" alt="${starred}"></a>
                <div class="topHeader"><a href="starred.view?" target="main">${starred}</a></div>
            </td>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="podcastReceiver.view?" target="main"><img src="<spring:theme code="podcastLargeImage"/>" title="${podcast}" alt="${podcast}"></a>
                <div class="topHeader"><a href="podcastReceiver.view?" target="main">${podcast}</a></div>
            </td>
            <c:if test="${model.user.settingsRole}">
                <td style="min-width:4em;padding-right:1.5em">
                    <a href="settings.view?" target="main"><img src="<spring:theme code="settingsImage"/>" title="${settings}" alt="${settings}"></a>
                    <div class="topHeader"><a href="settings.view?" target="main">${settings}</a></div>
                </td>
            </c:if>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="status.view?" target="main"><img src="<spring:theme code="statusImage"/>" title="${status}" alt="${status}"></a>
                <div class="topHeader"><a href="status.view?" target="main">${status}</a></div>
            </td>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="more.view?" target="main"><img src="<spring:theme code="moreImage"/>" title="${more}" alt="${more}"></a>
                <div class="topHeader"><a href="more.view?" target="main">${more}</a></div>
            </td>
            <td style="min-width:4em;padding-right:1.5em">
                <a href="help.view?" target="main"><img src="<spring:theme code="helpImage"/>" title="${help}" alt="${help}"></a>
                <div class="topHeader"><a href="help.view?" target="main">${help}</a></div>
            </td>

            <td style="padding-left:1em">
                <form method="post" action="search.view" target="main" name="searchForm">
                    <table><tr>
                        <td><input type="text" name="query" id="query" size="28" placeholder="${search}" onclick="select();"></td>
                        <td><a href="javascript:document.searchForm.submit()"><img src="<spring:theme code="searchImage"/>" alt="${search}" title="${search}"></a></td>
                    </tr></table>
                </form>
            </td>

            <td style="padding-left:15pt;text-align:center;">
                <p class="detail" style="line-height:1.5">
                    <a href="j_acegi_logout" target="_top"><fmt:message key="top.logout"><fmt:param value="${model.user.username}"/></fmt:message></a>

                    <br>
                    <a href="premium.view" target="main"><img src="<spring:theme code="donateSmallImage"/>" alt=""></a>
                    <c:choose>
                        <c:when test="${model.licenseInfo.licenseValid}">
                            <a href="premium.view" target="main"><fmt:message key="top.gotpremium"/></a>
                        </c:when>
                        <c:otherwise>
                            <a href="premium.view" target="main"><fmt:message key="top.getpremium"/></a>
                            <c:if test="${model.licenseInfo.trialDaysLeft gt 0}">
                                <br>
                                <a href="premium.view" target="main"><fmt:message key="top.trialdaysleft"><fmt:param value="${model.licenseInfo.trialDaysLeft}"/></fmt:message></a>
                            </c:if>
                        </c:otherwise>
                    </c:choose>
                </p>
            </td>

            <c:if test="${model.newVersionAvailable}">
                <td style="padding-left:15pt">
                    <p class="warning">
                        <fmt:message key="top.upgrade"><fmt:param value="${model.brand}"/><fmt:param value="${model.latestVersion}"/></fmt:message>
                    </p>
                </td>
            </c:if>
        </tr></table>
    </td>

</tr></table>

</body></html>