<div id="requiredRenewalForm${i}" class="requiredRenewalForm-div"
	<g:if test="${hidden}">style="display:none;"</g:if>>
	<g:hiddenField name='requiredRenewalFormsList[${i}].id'
		value='${requiredRenewalForm?.id}' />
	<g:hiddenField name='requiredRenewalFormsList[${i}].deleted'
		value='false' />
	<g:hiddenField name='requiredRenewalFormsList[${i}].new' value='false' />

	<g:select name="requiredRenewalFormsList[${i}].contractminFormType.id"
		from="${edu.hawaii.its.dcmd.inf.ContractminFormType.list()}"
		value="${requiredRenewalForm?.id}"
		id="requiredRenewalFormsList[${i}].contractminFormType" optionKey="id"
		optionValue="form" />

	<span class="del-requiredRenewalForm"> <img
		src="${resource(dir:'images/skin', file:'icon_delete.png')}"
		style="vertical-align: middle;" /> </span>
</div>