@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Access to S_ADMI_FCD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_SE_S_ADMI_FCD_ACCESS as select distinct from zi_se_critical_auth_obj_access
{
    key UserID,
    key RoleName,
    key CriticalAuthObject,
    SysAdmFunctionLow,
    SysAdmFunctionHigh,
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
  CriticalAuthObject = 'S_ADMI_FCD'
