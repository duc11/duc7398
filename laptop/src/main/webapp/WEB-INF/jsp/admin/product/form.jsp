<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="panel panel-default">
    <div class="panel-body">
        <form:form action="${b}/index" modelAttribute="entity" enctype="multipart/form-data">
            <div style="color: black"> <h1>Product Form</h1></div>
            <h4>${message}</h4>
            <div class="row">
            <div class="form-group col-sm-6">
                <label >Id</label>
                <form:input class="form-control" path="productId" readonly="true" placeholder="Auto number" />
            </div>
            <div class="form-group col-sm-6">
                <label >Name</label>
                <form:input  class="form-control" path="name" />
            </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-6">
                    <label >ProductDate</label>
                    <form:input  class="form-control" path="productDate" />
                </div>
                <div class="form-group col-sm-6">
                    <label >Quantity</label>
                    <form:input  class="form-control" path="quantity" />
                </div>
            </div>
            <div class="row">
            <div class="form-group col-sm-6">
                <label >UnitPrice</label>
                <form:input class="form-control" path="price" />
            </div>
            <div class="form-group col-sm-6">
                <label >Discount</label>
                <form:input  class="form-control" path="discount" />
            </div>
            </div>
        <div class="row">
            <div class="form-group col-sm-6">
                <form:label path="avaiable">Avaiable</form:label>
                <div class="form-control">
                    <form:radiobutton  path="avaiable" value="true" label="Yes"/>
                    <form:radiobutton  path="avaiable" value="false" label="No"/>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label >Special</label>
                <div class="form-control">
                    <form:radiobutton  path="Special" value="true" label="Yes"/>
                    <form:radiobutton  path="Special" value="false" label="No"/>
                </div>
            </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-6">
                    <label>Manufacturer</label>
                    <form:select path="manufacturer.id" class="form-control">
                    <form:options items="${cates}" itemLabel="name" itemValue="id" />
                    </form:select>
                </div>
                <div class="form-group col-sm-6">
                    <label>Category</label>
                    <form:select path="category.categoryId" class="form-control">
                        <form:options items="${cate}" itemLabel="name" itemValue="categoryId" />
                    </form:select>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label >Photo</label>
                <input type="file" name="photo_file">
                <form:hidden  class="form-control" path="image" />
            </div>
            <div class="row">
                <div class="form-group col-sm-12">
                    <label >Description</label>
                    <form:textarea  class="form-control" rows="3" path="description" />
                </div>
            </div>

            <div class="form-group">
                <button class="btn btn-default primary" formaction="${b}/create">Create</button>
                <button class="btn btn-default warning" formaction="${b}/update" ${!empty entity.productId?'':'disabled'} >Update</button>
                <button class="btn btn-default danger" formaction="${b}/delete" ${!empty entity.productId?'':'disabled'} >Delete</button>
                <a href="${b}/index" class="btn btn-default" >Reset</a>
            </div>

        </form:form>
    </div>

</div>
<script type="text/javascript">

    bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>

