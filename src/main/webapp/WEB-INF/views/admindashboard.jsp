<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="partials/header.jsp" />
<jsp:include page="partials/navigationbar.jsp" />
<jsp:include page="partials/sidebar.jsp" />
          

<!-- ++++++++++++++++++++++++++ Only portion to show in Admin Dashboard +++++++++++++++++++++++++ -->
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header" style="color: rgb(92,184,92)">Dashboard</h3>
        </div>
    </div>
    <jsp:include page="partials/widgets.jsp" />
    <%--<jsp:include page="partials/morris-charts.jsp" />--%>
</div>
<!-- ++++++++++++++++++++++++++ End Only portion to show in Admin Dashboard +++++++++++++++++++++ -->


<jsp:include page="partials/footer.jsp" />