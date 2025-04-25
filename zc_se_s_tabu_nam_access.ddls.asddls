@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Access to S_TABU_NAM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_se_S_TABU_NAM_ACCESS as select distinct from zi_se_critical_auth_obj_access
{
    key UserID,
    key RoleName,
    key CriticalAuthObject,
   -- key FieldName,
    ACTVT,
    ActivityLongText,
   -- TableLow,
   -- TableHigh,
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
  CriticalAuthObject = 'S_TABU_NAM'
  and ACTVT <> '03'
