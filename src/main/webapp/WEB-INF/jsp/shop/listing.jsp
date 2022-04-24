<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../include/header.jsp" />



<c:forEach items="${prints}" var="print">
    <form action="/shop/cart/${print.id}" method="post">
        <input type="hidden" name="productId" value="${user.id}">
    <img src="${print.imageUrl}"/>
    <button type="submit">Add To cart</button>
    </form>
</c:forEach>



<jsp:include page="../include/footer.jsp" />


