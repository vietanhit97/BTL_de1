<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<section class="content">
	<!-- Default box -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">Cập Nhật Danh Mục</h3>
			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse" data-toggle="tooltip" title="Collapse">
					<i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"
					data-toggle="tooltip" title="Remove">
					<i class="fa fa-times"></i>
				</button>
			</div>
		</div>
		<div class="box-body">
			<form action="UpdateCategory" method="POST" role="form">
				<div class="form-group">
					<label for=""><fmt:message bundle="${bun}"
							key="theadId" />:</label> <input type="text"
						value="${c.id }" class="form-control" name="id"
						placeholder="Nhập Tên Danh Mục" readonly="readonly">
				</div>
				<div class="form-group">
					<label for=""><fmt:message bundle="${bun}"
							key="theadNameCategory" />:</label> <input type="text"
						value="${c.catname }" class="form-control" name="catname"
						placeholder="Nhập Tên Danh Mục" required="required">
				</div>
				<div class="form-group">
					<div class="radio">
						<label> <input type="radio" name="status" value="1"
							${c.status == 0 ? 'checked' : ''}> <fmt:message bundle="${bun}" key="hide" />
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" name="status" value="0"
							${c.status == 1 ? 'checked' : ''}> <fmt:message bundle="${bun}" key="show" />
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="">ParentId:</label> <input type="text"
						class="form-control" name="parentid" placeholder="Nhập Số Lượng" value="${c.parentld }"> 
				</div>
				<button type="submit" class="btn btn-primary">
					<fmt:message bundle="${bun}" key="newUpdate" />
				</button>
			</form>
		</div>
	</div>
	<!-- /.box -->
</section>
<%@ include file="../layout/footer.jsp"%>