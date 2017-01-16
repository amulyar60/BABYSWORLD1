<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

 <script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script> 
<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->
  <div class="table-responsive">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Manage products Page</h1>

            <p class="lead">This is the manage products page!</p>
        </div>
        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary w3-pale-red">Add Product</a>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="success">
                <th class="w3-pale-red">Photo Thumb</th>
                <th class="w3-pale-red">Product Name</th>
                <th class="w3-pale-red">Category</th>
                <th class="w3-pale-red">Condition</th>
                <th class="w3-pale-red">Price</th>
                <th class="w3-pale-red">View/Delete/Edit </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
               
                
            <tr >
  <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-eye-open"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-trash"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-erase"></span></a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            
        </table>
        </div>
        </div>
        </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
