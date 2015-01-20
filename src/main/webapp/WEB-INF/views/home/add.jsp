<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>search</title>
</head>
<body>
	<div class="wrapper wrapper-style1 wrapper-first">
		<article>
		<form method="post" class="modifyForm">
			<div class="content base">
				<header class="title"> 案件基本信息登记表 </header>
				<section>
				<table>
					<tr>
						<td><p>集资项目名称</p></td>
						<td colspan="3">
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资单位名称（个人姓名）</p></td>
						<td colspan="3">
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
					</tr>
					<tr>
						<td><p>所属行业</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
						<td><p>集资方式</p></td>
						<td>
							<div class="form-group">
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>投资理财</option>
										<option>售后包租</option>
										<option>加盟返利</option>
										<option>矿产资源开发投资</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>业务类别</p></td>
						<td>
							<div class="form-group">
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>债权类</option>
										<option>股权类</option>
										<option>商品营销类</option>
										<option>生产经营类</option>
									</select>
								</div>
							</div>
						</td>
						<td><p>类别明细</p></td>
						<td>
							<div class="form-group">
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>债权类</option>
										<option>股权类</option>
										<option>商品营销类</option>
										<option>生产经营类</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>集资金额</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">万元
							</div>
						</td>
						<td><p>参与集资人数</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
					</tr>
					<tr>
						<td><p>涉及地区</p></td>
						<td>&nbsp;</td>
						<td><p>发案时间</p></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><p>注册地</p></td>
						<td>&nbsp;</td>
						<td><p>案发地</p></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><p>发现渠道</p></td>
						<td>
							<div class="form-group">
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>自查发现</option>
										<option>公安机关发现</option>
										<option>举报发现</option>
									</select>
								</div>
							</div>
						</td>
						<td><p>案件级别</p></td>
						<td>
							<div class="form-group">
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>督办案件</option>
										<option>本市案件</option>
										<option>配合其他省（市）处置案件</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><p>负责人</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
						<td><p>填报人</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
					</tr>
					<tr>
						<td><p>联系电话</p></td>
						<td>
							<div class="form-group">
								<input class="form-control" id="focusedInput" type="text">
							</div>
						</td>
						<td><p>填报日期</p></td>
						<td>&nbsp;</td>
					</tr>
				</table>
				</section>
			</div>
			<div class="content administration hraf">
				<header class="title"> 行政处理情况 </header>
				<section>
				<table>
					<tr>
						<td>行政受理</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已受理</button></td>
						<td>行政处理</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已处理</button></td>
					</tr>
					<tr>
						<td>移送公安</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已完成</button></td>
						<td>排除非法集资</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已完成</button></td>
					</tr>
				</table>
				</section>
			</div>
			<div class="content judicial">
				<header class="title"> 司法处置情况 </header>
				<section>
				<table>
					<tr>
						<td>公安受理</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已受理</button></td>
						<td>公安立案</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已完成</button></td>
					</tr>
					<tr>
						<td>立案罪名</td>
						<td></td>
						<td>侦查</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已完成</button></td>
					</tr>
					<tr>
						<td>起诉</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">已完成</button></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>审判结果</td>
						<td></td>
						<td>认定罪名</td>
						<td></td>
					</tr>
					<tr>
						<td>获刑人数</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				</section>
			</div>
			<div class="content closed">
				<header class="title"> 案件结案情况 </header>
				<section>
				<table>
					<tr>
						<td>司法审结</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">未完成</button></td>
						<td>集资款清退完毕</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">未完成</button></td>
					</tr>
				</table>
				</section>
			</div>
			<div class="content aftermath">
				<header class="title"> 善后维稳情况 </header>
				<section>
				<table>
					<tr>
						<td>返还比例</td>
						<td><button type="button"
								class="btn btn-success clicksuccess">未完成</button></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>上访/维稳事件</td>
						<td>时间、地点、人物、描述（可以添加多个）</td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						style="margin-bottom: 0px;"
						onclick="javascript:window.history.go(-1)">返回</button>
					<button type="button" class="btn btn-primary">保存</button>
				</div>
				</section>
			</div>
		</form>
		</article>
	</div>
</body>
</html>