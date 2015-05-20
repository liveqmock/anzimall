<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的商圈" /></jsp:include>

<div class="main">
	
	<section class="address circle">
		<ul>
		<c:forEach var="list" items="${list}" varStatus="status">
			<li>
				<h3><img src="/wap/images/icon_people.png" ><span>常去的商圈</span></h3>
				<p>${list.province }${list.city }${list.county }${list.address }</p>
				<h6>
					<a href="/toUpdateUserCbd_wap.shtml?id=${list.id }"><img src="/wap/images/icon_edit.png"></a>
					<a href="/delUserCdb_wap.shtml?id=${list.id }" onclick="return confirm('确认删除该商圈吗')"><img src="/wap/images/icon_delect.png"></a>
				</h6>
			</li>
		</c:forEach>
		</ul>

		<div style="color: #0383f9;margin:0 0.8rem;">最多可以添加5个商圈</div>
		<c:if test="${fn:length(list) < 5}">
		<a href="/wap/center/circle_add.jsp" class="link">新增商圈>></a>
		</c:if>	
	</section>




</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>