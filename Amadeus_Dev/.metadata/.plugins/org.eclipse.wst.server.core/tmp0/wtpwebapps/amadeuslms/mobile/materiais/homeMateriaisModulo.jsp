<!-- 
Copyright 2008, 2009 UFPE - Universidade Federal de Pernambuco
 
Este arquivo � parte do programa Amadeus Sistema de Gest�o de Aprendizagem, ou simplesmente Amadeus LMS
 
O Amadeus LMS � um software livre; voc� pode redistribui-lo e/ou modifica-lo dentro dos termos da Licen�a P�blica Geral GNU como
publicada pela Funda��o do Software Livre (FSF); na vers�o 2 da Licen�a.
 
Este programa � distribu�do na esperan�a que possa ser �til, mas SEM NENHUMA GARANTIA; sem uma garantia impl�cita de ADEQUA��O a qualquer MERCADO ou APLICA��O EM PARTICULAR. Veja a Licen�a P�blica Geral GNU para maiores detalhes.
 
Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral GNU, sob o t�tulo "LICENCA.txt", junto com este programa, se n�o, escreva para a Funda��o do Software Livre (FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA.
-->

<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" 
"http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<%@page import="java.util.List"%>

<%@page import="br.ufpe.cin.amadeus.amadeus_mobile.facade.FacadeMobile"%>
<%@page import="br.ufpe.cin.amadeus.amadeus_mobile.basics.CourseMobile"%>
<%@page import="br.ufpe.cin.amadeus.amadeus_mobile.basics.ModuleMobile"%>
<%@page
	import="br.ufpe.cin.amadeus.amadeus_mobile.basics.MaterialMobile"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type"
	content="application/xhtml+xml; charset=iso-8859-1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>amadeus.mobile</title>
</head>
<%
	FacadeMobile facMobile = FacadeMobile.getInstance();
	String curso = request.getParameter("idCourse");
	String modulo = request.getParameter("idModule");
	String login = request.getParameter("login");
	int paginaAtual = Integer.parseInt(request.getParameter("pagina"));
	CourseMobile c = facMobile
			.getCourse(Integer.parseInt(curso), login);
	ModuleMobile m = null;
	List<MaterialMobile> materials = null;
	MaterialMobile material = null;
	m = facMobile.getModule(Integer.parseInt(modulo));
%>
<body>
<table style="width: 100%;">
	<tr>
		<td align="center" style="background-color:<%=c.getColor()%>;"><strong><%=m.getNome()%>

		</strong></td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #cccccc;"><strong>>>Materiais</strong></td>
	</tr>
	<%
		materials = m.getMaterials();
		int tamanhoPaginacao = facMobile.pagesQuantity(materials);
		int inicioFor = (paginaAtual - 1) * 5;
		int fimFor = -1;
		if (paginaAtual == tamanhoPaginacao) {
			fimFor = materials.size();
		} else {
			fimFor = (paginaAtual) * 5;
		}
		for (int j = inicioFor; j < fimFor; j++) {
			material = materials.get(j);
	%>
	<tr style="cursor: pointer;">
		<td valign="top" align="left"
			style="border-bottom: 1px solid #cccccc;"><%=material.getName()%></td>
	</tr>
	<tr>
		<td align="center">
		<%
			}
			if (tamanhoPaginacao > 1) {
				if (paginaAtual > 1) {
		%> 			<a href="<%=request.getContextPath()%>/mobile/materiais/homeMateriaisModulo.jsp?idCourse=<%=curso%>&idModule=<%=modulo%>&login=<%=login%>&pagina=<%=paginaAtual - 1%>">
		<< </a> &nbsp;&nbsp; <%
 	}

 		for (int l = 0; l < tamanhoPaginacao; l++) {
 %> 		<a href="<%=request.getContextPath()%>/mobile/materiais/homeMateriaisModulo.jsp?idCourse=<%=curso%>&idModule=<%=modulo%>&login=<%=login%>&pagina=<%=(l + 1)%>"><%=l + 1%></a>

		&nbsp;&nbsp; <%
 	}

 		if (paginaAtual < tamanhoPaginacao) {
 %> 		<a href="<%=request.getContextPath()%>/mobile/materiais/homeMateriaisModulo.jsp?idCourse=<%=curso%>&idModule=<%=modulo%>&login=<%=login%>&pagina=<%=(paginaAtual + 1)%>">
		>> </a> <%
 	}
 	}
 %>
		</td>
	</tr>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td align="left">
			<a href="<%=request.getContextPath()%>/mobile/curso/homeModulo.jsp?login=<%=login%>&idCourse=<%=curso%>&idModule=<%=modulo%>">Voltar</a>
			<a href="<%=request.getContextPath()%>/mobile/home/homeHtml.jsp?login=<%=login%>">Home</a>
		</td>
	</tr>
</table>
</body>
</html>