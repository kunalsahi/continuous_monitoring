@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AGR_1251 Field Name ACTVT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_se_auth_actvt as select from agr_1251
left outer join tactt as _TACTT on _TACTT.actvt = agr_1251.low
                          and _TACTT.spras = $session.system_language
{
  agr_1251.agr_name,
  agr_1251.object,
  agr_1251.auth,
  agr_1251.variant,
  agr_1251.field,
  agr_1251.low as actvt,
  case when agr_1251.low = '*'
   then 'All Activities' 
   else  _TACTT.ltext end as ltext
  
}
where agr_1251.field = 'ACTVT'
