<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="../include/header.jsp" />

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container padding-bottom-3x mb-1">
    <div class="table-responsive shopping-cart">
        <table class="table">
            <thead>
<%--            <tr>--%>

<%--                <th>Product Name</th>--%>
<%--                <th class="text-center">${savedCartItem.prints}</th>--%>
<%--&lt;%&ndash;                <th class="text-center">${savedCartItem.subtotal}</th>&ndash;%&gt;--%>
<%--                <th class="text-center"><a class="btn btn-sm btn-outline-danger" href="#">Clear Cart</a></th>--%>
<%--            </tr>--%>
<%--            </c:forEach>--%>
            </thead>
            <tbody>
            <tr>
<%--                <c:forEach items="${savedCartItem}" var ="sc">--%>
                <td>
                    <div class="product-item">
                        <a class="product-thumb" href="#"><img src="${savedCartItem.prints}" alt="Product"></a>
                        <div class="product-info">
                            <h4 class="product-title"><a href="#">Unionbay Park</a></h4><span><em>Size:</em> 10.5</span><span><em>Color:</em> Dark Blue</span>
                        </div>
                    </div>
                </td>
                <td class="text-center">
                    <div class="text-form"${SavedCartItem.quantity}>
                        <select name="quantity"${SavedCartItem.quantity}">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </td>

                <td class="text-center"><a class="remove-from-cart"${selectedCartLine.delete} href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
            </tr>
            <tr>
                <td>
                    <div class="product-item">
                        <a class="product-thumb" href="#"><img src="https://via.placeholder.com/220x180/5F9EA0/000000" alt="Product"></a>
                        <div class="product-info">
                            <h4 class="product-title"><a href="#">Daily Fabric Cap</a></h4><span><em>Size:</em> XL</span><span><em>Color:</em> Black</span>
                        </div>
                    </div>
                </td>
                <td class="text-center">
                    <div class="count-input">
                        <select class="form-control">
                            <option>1</option>
                            <option selected="">2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </td>
                <td class="text-center text-lg text-medium">$24.89</td>
                <td class="text-center">—</td>
                <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
            </tr>
            <tr>
                <td>
                    <div class="product-item">
                        <a class="product-thumb" href="#"><img src="https://via.placeholder.com/220x180/9932CC/000000" alt="Product"></a>
                        <div class="product-info">
                            <h4 class="product-title"><a href="#">Cole Haan Crossbody</a></h4><span><em>Size:</em> -</span><span><em>Color:</em> Turquoise</span>
                        </div>
                    </div>
                </td>
                <td class="text-center">
                    <div class="count-input">
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </td>
                <td class="text-center text-lg text-medium">$200.00</td>
                <td class="text-center">—</td>
                <td class="text-center"><a class="remove-from-cart" href="/cart/deleteItem/{id}" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="shopping-cart-footer">
        <div class="column">
            <form class="coupon-form" method="post">
                <input class="form-control form-control-sm" type="text" placeholder="Coupon code" required="">
                <button class="btn btn-outline-primary btn-sm" type="submit">Apply Coupon</button>
            </form>
        </div>
        <div class="column text-lg">Subtotal: <span class="text-medium">$289.68</span></div>
    </div>
    <div class="shopping-cart-footer">
        <div class="column"><a class="btn btn-outline-secondary" href="#"><i class="icon-arrow-left"></i>&nbsp;Back to Shopping</a></div>
        <div class="column"><a class="btn btn-primary" href="#" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Your cart" data-toast-message="is updated successfully!">Update Cart</a><a class="btn btn-success" href="#">Checkout</a></div>
    </div>
</div>



<jsp:include page="../include/footer.jsp" />
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

