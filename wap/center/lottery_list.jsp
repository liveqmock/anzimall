<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="推广链接" /></jsp:include>

<style>
	.user em{font-style: normal;font-size: 12px;}
	.user em b{font-size: 18px;margin: 0 3px;color: #ee2323;}
</style>
<div class="main">
	
	<section class="user">
		<ul>
			<li><a ><span><img src="/wap/images/Lottery.png">推广反利</span><em>共获得<b>${totalintegral }</b>积分</em></a></li>
		</ul>
	</section>


	<section class="lottery_list">
		<table border="0" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th>推广用户</th>
					<th>注册时间</th>
					<th>获利积分</th>
				</tr>
			</thead>
		<tbody align="center">
	
	
			<c:if test="${empty list}"><tr><td colspan='3'  align="center"><img src='/images/no_bg4.png'></td></tr></c:if> 
			
			<c:forEach var="list" items="${list}" varStatus="index" begin="0" end="9" step="1">
				<tr>
					<td>${list.phone}</td>
					<td><font color="#4DA077">${list.regdate}</font></td>
					<td><a >${list.integral}</a></td>
				</tr>
			</c:forEach>

			
			</tbody>
		</table>
	</section>

</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>

<script>

	var flag = 1;
	var more = true;
	$(window).bind('scroll',function(){

		if(more && $(window).scrollTop()+$(window).height()>=$(document).height()){


			more = false;
			$.ajax({ 
				type:'post', 
				dataType:'json', 
				url:location.href, 
				data:{flag:flag},
				beforeSend:function(){}, 
				success:function(json){

					// 为空则停止更新
					if(json.length == 0){return false;}

					var res = [];
					$.each(json,function(i,n){
					
						console.log(11111);
						res.push('<tr><td>'+n.phone+'</td><td><font color="#4DA077">'+n.regdate+'</font></td><td><a >'+n.integral+'</a></td></tr>');
						
					});

					$('.lottery_list tbody').append(res.join(''));

					flag++;
					more = true;
	
				}
			});
		}	

	}); 
	

</script>