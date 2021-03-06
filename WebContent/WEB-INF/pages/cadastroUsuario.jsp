<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="bootstrap.jsp" />
</head>

<body>

	<table width="100%">
		<tr>
			<td width="20%">&nbsp;</td>
			<td>
				<form action="cadastroUsuario" method="post">

					<jsp:include page="menu.jsp" />
					<div class="page-header">
						<h2>Cadastro de Usu�rios</h2>
					</div>
					<table width="100%">
						<c:if test="${validacao == 'false'}">
							<tr>
								<td width="20%">&nbsp;</td>
								<td>
									<div class="alert alert-danger" role="alert" style="text-align: left;">
										<c:forEach items="${msgsErro}" var="msg">
											<span class="glyphicon glyphicon-asterisk"></span> ${msg} <br />
										</c:forEach>
									</div>
								</td>
								<td width="20%">&nbsp;</td>
							</tr>
						</c:if>
						<c:if test="${sucesso == 'true'}">
							<tr>
								<td width="20%">&nbsp;</td>
								<td>
									<div class="alert alert-info" role="alert" style="text-align: left;">
											<output>${msgSucesso}</output>
									</div>
								</td>
								<td width="20%">&nbsp;</td>
							</tr>
						</c:if>
						<tr>
							<td width="20%">&nbsp;</td>
							<td>
								<div class="input-group" align="center">
									<span class="input-group-addon"><spring:message code="label.usuario" />:</span> <input
										name="usuario" id="usuario" class="form-control" maxlength="20"
										placeholder="<spring:message code="label.usuario" />" type="text" value="" size="20" />
								</div>
							</td>
							<td width="20%">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3">&nbsp;</td>
						</tr>
						<tr>
							<td width="20%">&nbsp;</td>
							<td>
								<div class="input-group" align="center">
									<span class="input-group-addon"><spring:message code="label.senha" />:</span> <input
										name="senha" id="senha" type="password" class="form-control" maxlength="10"
										value="" size="20" />
								</div>
							</td>
							<td width="20%">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3">&nbsp;</td>
						</tr>
						<tr>
							<td width="20%">&nbsp;</td>
							<td>
								<div class="input-group" align="center">
									<span class="input-group-addon"><spring:message code="label.email" />:</span> <input
										name="email" id="email" type="text" class="form-control" maxlength="40"
										placeholder="email@email.com" value="" size="20" />
								</div>
							</td>
							<td width="20%">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="3">&nbsp;</td>
						</tr>
						<tr>
							<td align="center" colspan="3">
								<input name="btnLogar" class="btn btn-default" type="submit" value="<spring:message code="label.cadastrar" />">
							</td>
						</tr>
					</table>
				</form>
			</td>
			<td width="20%">&nbsp;</td>
		</tr>
	</table>
</body>
</html>