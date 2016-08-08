<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="partials/header.jsp" />
<jsp:include page="partials/navigationbar.jsp" />
<jsp:include page="partials/sidebar.jsp" />
<!-- ++++++++++++++++++++++++++ Only portion to show in Admin Dashboard +++++++++++++++++++++++++ -->
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header" style="color: rgb(92,184,92)">Inputs Form</h3>
        </div>
    </div>
    <!--+++++++++++++ Form Goes Here +++++++++++++++++++++-->
    <form class="form-horizontal" name='inputForm' action="inputs.do" method='GET' >
        <div class="row">
                 <!-- Form Name -->
                 <legend>AES Data Insertion</legend>
                <!-- Text input-->
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="plain_text">Plain Text : </label>
                        <div class="col-md-4">
                            <input id="plain_text" name="plain_text" placeholder="Eg: Any text or sentence" class="form-control input-md" type="text">
                        </div>
                    </div>
                </div>
                <!-- Text input-->
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
                     <div class="form-group">
                        <label class="col-md-4 control-label" for="secret_key">Secret Key : </label>
                        <div class="col-md-4">
                            <input id="secret_key" name="secret_key" placeholder="Eg: AG3GiD64NkFc84bJhF3fd3" class="form-control input-md" type="text">
                        </div>
                    </div>
                </div>
                 <!-- Text input-->
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
                     <div class="form-group">
                        <label class="col-md-4 control-label" for="iv">IV : </label>
                        <div class="col-md-4">
                            <input id="iv" name="iv" placeholder="Eg: AAAAAAAAA" class="form-control input-md" type="text">
                        </div>
                    </div>
                </div>
        </div>
                <!-- Button -->
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="form-group">
                            <input name="submit" type="submit"   value="submit" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
    </form>
</div>
<!-- ++++++++++++++++++++++++++ End Only portion to show in Admin Dashboard +++++++++++++++++++++ -->
<jsp:include page="partials/footer.jsp" />
