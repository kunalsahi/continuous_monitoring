@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AGR_1251 Field Name DICBERCLS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_se_auth_appl_dicbercls
  as select from agr_1251

{
  agr_1251.agr_name,
  agr_1251.object,
  agr_1251.auth,
  agr_1251.variant,
  agr_1251.field,
  agr_1251.low  as dicbercls_LOW,
  agr_1251.high as dicbercls_HIGH
}
where
  agr_1251.field = 'DICBERCLS'
