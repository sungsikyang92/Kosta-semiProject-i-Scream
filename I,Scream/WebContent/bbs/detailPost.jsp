<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div class="bbs-container">  
	<form action="${pageContext.request.contextPath}/front" method="post" >
			<div class="card-body">
				<h4 class="card-title">게시글 확인</h4>
				<div class="table-responsive">
				<input type="hidden" name="command" value="addBBS">
					<table class="table table-bordered" style="width:800px;margin-left: auto; margin-right: auto;">
					<tr>
						<td>글번호 ${requestScope.pvo.bbs_no }</td>
						<td>제목: ${requestScope.pvo.title}</td>
						<td>작성자 : ${requestScope.pvo.vo.id }</td>
						<td>조회수 : ${requestScope.pvo.hits }</td>
						<td>${requestScope.pvo.createDate }</td>
					</tr>
					<tr>
						<td colspan="5"><pre>${requestScope.pvo.context}</pre></td>
					</tr>
					<tr>
						<td>category :${requestScope.pvo.category == '베이비시터'}
							<select name="category">
								<option>------------------------------</option>
								<c:choose>
									<c:when test="${requestScope.pvo.category == '베이비시터'} ">
									  	<option value="베이비시터" selected="selected">베이비시터</option>
										  <option value="펫시터">펫시터</option>
										  <option value="방문교사">방문교사</option>
									</c:when>
									<c:when test="${requestScope.pvo.category=='펫시터'} ">
								  	<option value="베이비시터" >베이비시터</option>
									  <option value="펫시터" selected="selected">펫시터</option>
									  <option value="방문교사">방문교사</option>
									</c:when>
									<c:otherwise>
								  	<option value="베이비시터" >베이비시터</option>
									  <option value="펫시터">펫시터</option>
									  <option value="방문교사" selected="selected">방문교사</option>
									</c:otherwise>
								</c:choose>
							</select>  
						</td>
					<tr>
						<td>workTime :${requestScope.pvo.workTime}</td>
					</tr>
					<%-- 하단버튼 --%>
					<tr>
						<td colspan="5" class="btnArea">
						<c:if test="${requestScope.pvo.vo.id==sessionScope.mvo.id}">
							
								
									<form name="deletePost"
										action="${pageContext.request.contextPath}/front" method="post">
										<input type="hidden" name="command" value="DeletePost"> <input
											type="hidden" name="bbs_no" value="${requestScope.pvo.bbs_no}">
									</form>				
									<form name="updateForm"
										action="${pageContext.request.contextPath}/front" method="post">
										<input type="hidden" name="command" value="UpdatePostForm"> <input
											type="hidden" name="bbs_no" value="${requestScope.pvo.bbs_no}">
									</form>
									<button type="button" class="btn" onclick="updatePostForm()">수정</button>
									<button type="button" class="btn" onclick="deletePost()">삭제</button>
									
								
							
						</c:if>
						<button type="button" class="btn" onclick="postBack()">뒤로</button>
							</td>
						</tr>
					</table>
					
					
				

					
				</div>
			</div>
	</form>
	
</div>

									