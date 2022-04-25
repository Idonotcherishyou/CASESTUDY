<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../include/header.jsp" />

<div class="container" style="margin:0 auto;">
    <div class="card-header my-3"> All Products</div>
    <div class="row">
        <div class="col-md-3" style="display: grid; grid-template-columns: 1fr 1fr 1fr">

            <c:forEach items="${allprints}" var="allprints">
                <div class="card" style="width: 18rem;">
                    <img src="${print.imageUrl}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${allprints.name}</h5>
                        <h5 class="card-title">${allprints.price}</h5>
                        <a href="/cart/check-out/${allprints.id}" class="btn btn-primary">Buy Now</a>
                        <a href="/cart/addItem/${allprints.id}" class="btn btn-primary">Add To Cart</a>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>



<%--<c:forEach items="${prints}" var="print">--%>
<%--    <form action="/shop/cart/${print.id}" method="post">--%>
<%--        <input type="hidden" name="productId" value="${user.id}">--%>
<%--    <img src="${print.imageUrl}"/>--%>
<%--    <button type="submit">Add To cart</button>--%>
<%--    </form>--%>
<%--</c:forEach>--%>



<jsp:include page="../include/footer.jsp" />


