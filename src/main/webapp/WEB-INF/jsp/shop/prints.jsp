<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../include/header.jsp" />

<!-- rewrite this as a case statement using c:choose -->
<c:if test="${empty form.productId}">
    <h1>Prints Available</h1>
</c:if>

<c:if test="${not empty form.productId}">
    <h1>Edit User</h1>
</c:if>

<form action="/home/printsSubmit"   method="POST">
    <input type="hidden" name="productId" value="${form.productId}">

    Name <input type="text" name="productName" id="productName" value="${form.productName}">
    <c:forEach items='${bindingResult.getFieldErrors("productName")}' var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
    <br>
    Description <input type="text" name="description" id="description" value="${form.description}">
    <c:forEach items='${bindingResult.getFieldErrors("description")}' var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
    <br>
    ImageUrl  <input type="text" name="imageUrl" id="imageUrl" value="${form.imageUrl}">
    <c:forEach items='${bindingResult.getFieldErrors("imageUrl")}' var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
    <br>
    Price <input type="text" name="price" id="price"  value="${form.price}">
    <c:forEach items='${bindingResult.getFieldErrors("price")}' var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
    <br>

    <br>
    <button type="submit">Add to product list</button>
</form>


<%--<c:if test="${bindingResult.hasErrors()}">--%>
<%--    <br>--%>

<%--    <c:forEach items="${bindingResult.getAllErrors()}" var="error">--%>
<%--        <div style="color:red;">${error.getDefaultMessage()}</div>--%>
<%--    </c:forEach>--%>
<%--</c:if>--%>



<jsp:include page="../include/footer.jsp" />