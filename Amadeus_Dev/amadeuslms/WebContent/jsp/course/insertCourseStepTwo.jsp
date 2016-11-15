<!-- 
Copyright 2008, 2009 UFPE - Universidade Federal de Pernambuco
 
Este arquivo é parte do programa Amadeus Sistema de Gestão de Aprendizagem, ou simplesmente Amadeus LMS
 
O Amadeus LMS é um software livre; você pode redistribui-lo e/ou modifica-lo dentro dos termos da Licença Pública Geral GNU como
publicada pela Fundação do Software Livre (FSF); na versão 2 da Licença.
 
Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU para maiores detalhes.
 
Você deve ter recebido uma cópia da Licença Pública Geral GNU, sob o título "LICENCA.txt", junto com este programa, se não, escreva para a Fundação do Software Livre (FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA.
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<logic:notPresent name="user"> 
	<logic:redirect action="system.do?method=showViewWelcome"/>			
</logic:notPresent>

<html:html>
	<jsp:include page="/jsp/conf/header.jsp" />
	
	<body>
		<div id="all">
		<div id="header">
			
			<jsp:include page="/jsp/conf/login.jsp" />
		
		</div>
		<jsp:include page="/jsp/conf/logo.jsp" />
		<div id="page_title">
			<h2><bean:message key="courseForm.heading"/></h2>
		</div>
		
		<div id="breadcrumbs">
			<ul id="breadcrumb">
				<li><html:link action="system.do?method=showViewMenu"><bean:message key="menu.name"/></html:link></li>
				<li><bean:message key="courseForm.heading"/></li>
			</ul>
		</div>
			<div id="pLeftMenu" class="pLeftMenu">
			<div id="side_menu_1">
				<ul id="menu_sessoes">
					<li><html:link action="user.do?method=showViewAllCoursesInManagerUsers">Todos os cursos</html:link></li>
					<li><html:link action="/fInsertCourseStepOne.do"> Criar curso</html:link></li>
			    </ul>
			</div>
		</div>					
			<div id="content">
				<dl class="insert2">
					<html:form action="/insertCourseStepTwo" focus="name">
					<html:errors/>
					<dt><bean:message key="courseForm.keywords"/></dt>
						<dd class="field"><html:textarea property="keywords" styleClass="formfield" styleId="realname"/></dd>
						<dd class="description"><bean:message key="courseForm.stepTwoDescription"/></dd>
					<dt class="field"><html:submit property="insertCourseStepTwo" styleClass="button"><bean:message key="general.register"/></html:submit></dt>
					</html:form>
				</dl>
					
			</div>	
					
			<jsp:include page="/jsp/conf/footer.jsp" />

		</div>
</body>	
	
</html:html>