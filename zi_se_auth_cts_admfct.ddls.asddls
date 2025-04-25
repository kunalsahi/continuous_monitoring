@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AGR_1251 Field Name CTS_ADMFCT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SE_AUTH_CTS_ADMFCT
  as select from agr_1251

{
  agr_1251.agr_name,
  agr_1251.object,
  agr_1251.auth,
  agr_1251.variant,
  agr_1251.field,
  agr_1251.low  as CTS_ADMFCT_LOW,
  agr_1251.high as CTS_ADMFCT_HIGH
}
where
  agr_1251.field = 'CTS_ADMFCT'
