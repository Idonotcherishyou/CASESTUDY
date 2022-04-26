<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />
<link rel="stylesheet" href="/public/css/register.css">
<div class="content">
    <div class="form-area">
        <c:if test="${empty form.id}">
            <h1>Sign Up</h1>
        </c:if>

        <c:if test="${not empty form.id}">
            <h1>Edit User</h1>
        </c:if>
        <form id="registrationForm" action="/user/registerSubmit"   method="post">
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa-solid fa-signature fa-bounce"></i>
                </div>
                <label id="firstNameLabel" for="firstName">First Name: </label>
                <input type="text" name="email" id="firstName" placeholder="love"><br>
                <c:forEach items='${bindingResult.getFieldErrors("firstName")}' var="error">
                    <div style="color:red;">${error.getDefaultMessage()}</div>
                </c:forEach>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa-solid fa-signature fa-bounce"></i>
                </div>
                <label id="lastNameLabel" for="lastName">Last Name: </label>
                <input type="text" name="email" id="lastName" placeholder="ineedthisjob"><br>
                <c:forEach items='${bindingResult.getFieldErrors("lastName")}' var="error">
                    <div style="color:red;">${error.getDefaultMessage()}</div>
                </c:forEach>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa-solid fa-envelope fa-bounce"></i>
                </div>
                <label id="emailLabel" for="email">Email: </label>
                <input type="text" name="email" id="email" placeholder="email@domain.com"><br>
                <c:forEach items='${bindingResult.getFieldErrors("email")}' var="error">
                    <div style="color:red;">${error.getDefaultMessage()}</div>
                </c:forEach>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa-solid fa-key fa-bounce"></i>
                </div>
                <label id="passwordLabel" for="password">Password: </label>
                <input type="text" name="password" id="password" placeholder="ex: Banana"><br>
                <c:forEach items='${bindingResult.getFieldErrors("password")}' var="error">
                    <div style="color:red;">${error.getDefaultMessage()}</div>
                </c:forEach>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa-solid fa-lock fa-bounce"></i>
                </div>
                <label id="confirmPasswordLabel" for="confirmPassword">Confirm Password: </label>
                <input type="text" name="confirmPassword" id="confirmPassword" placeholder="ex: Banana"><br>
                <c:forEach items='${bindingResult.getFieldErrors("confirmPassword")}' var="error">
                    <div style="color:red;">${error.getDefaultMessage()}</div>
                </c:forEach>
            </div>
            <button type="submit" class="btn btn-login">Login</button>
        </form>
    </div>
</div>
<!-- rewrite this as a case statement using c:choose -->
<%--<c:if test="${empty form.id}">--%>
<%--    <h1>Sign Up</h1>--%>
<%--</c:if>--%>

<%--<c:if test="${not empty form.id}">--%>
<%--    <h1>Edit User</h1>--%>
<%--</c:if>--%>

<%--<form action="/user/registerSubmit"   method="POST">--%>
<%--    <input type="hidden" name="id" value="${form.id}">--%>

<%--    Email <input type="text" name="email" id="emailId" value="${form.email}">--%>
<%--    <c:forEach items='${bindingResult.getFieldErrors("email")}' var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--    <br>--%>
<%--    First Name <input type="text" name="firstName" id="firstNameId" value="${form.firstName}">--%>
<%--    <c:forEach items='${bindingResult.getFieldErrors("firstName")}' var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--    <br>--%>
<%--    Last Name <input type="text" name="lastName" id="lastNameId" value="${form.lastName}">--%>
<%--    <c:forEach items='${bindingResult.getFieldErrors("lastName")}' var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--    <br>--%>
<%--    Password <input type="text" name="password" id="passwordId"  value="${form.password}">--%>
<%--    <c:forEach items='${bindingResult.getFieldErrors("password")}' var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--    <br>--%>
<%--    Confirm Password <input type="text"--%>
<%--                            name="confirmPassword" id="confirmPasswordId"  value="${form.confirmPassword}">--%>
<%--    <c:forEach items='${bindingResult.getFieldErrors("confirmPassword")}' var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--    <br>--%>
<%--    Check Box <input type="checkbox" name="checkbox">--%>
<%--    <br>--%>

<%--    <br>--%>
<%--    <button type="submit">Submit</button>--%>
<%--</form>--%>


<%--<c:if test="${bindingResult.hasErrors()}">--%>
<%--    <br>--%>

<%--    <c:forEach items="${bindingResult.getAllErrors()}" var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--</c:if>--%>



<jsp:include page="../include/footer.jsp" />
