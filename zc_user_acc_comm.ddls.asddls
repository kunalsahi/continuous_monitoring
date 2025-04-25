@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'User Account and Communications'
@OData.publish: true
define  view entity zc_user_acc_comm
as select from zi_user_acc_comm
{
    key UserName,
    UserFirstName,
    UserLastName,
    UserValidFrom,
    UserValidTo,
    UserType,
    UserGroup,
    UserLockStatus,
    LastLogonDate,
    LastLogonTime,
    EmployeeID,
    UserEmailAddress,
    RolesExist
}
