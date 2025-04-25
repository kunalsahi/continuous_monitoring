@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Access to S_CTS_SADM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_SE_S_CTS_SADM_ACCESS
  as select distinct from zi_se_critical_auth_obj_access
{
  key UserID,
  key RoleName,
  key CriticalAuthObject,
      --key FieldName,
      ACTVT,
      ActivityLongText,
      DomainLow,
      DomainHigh,
      LogicalSystemLow,
      LogicalSystemHigh,
      AdminTaskLow,
      AdminTaskHigh,
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
where
  CriticalAuthObject = 'S_CTS_SADM'
