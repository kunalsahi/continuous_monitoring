@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Access to Critical Authorization Objects'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity zc_se_crit_auth_access
  as select from zi_se_critical_auth_obj_access
{
  key UserID,
  key RoleName,
  key CriticalAuthObject,
  key FieldName,
      ACTVT,
      ActivityLongText,
      AuthorizationValueLow,
      AuthorizationValueHigh,
      UserLongName,
      UserType,
      UserGroup,
      UserLockStatus,
      LastLogonDate,
      UserValidFrom,
      UserValidTo,
      RoleDescription,
      CriticalDescription
}
