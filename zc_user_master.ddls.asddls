@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Master With Employee Org Data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity zc_user_master as select from zc_user_acc_comm
association [1] to ZI_EMP_ORG as _zi_emp_org on _zi_emp_org.employeeId = zc_user_acc_comm.EmployeeID
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
    RolesExist,
    _zi_emp_org.employeeName,
    _zi_emp_org.managerId,
    _zi_emp_org.managerName,
    _zi_emp_org.careerLevel,
    _zi_emp_org.division,
    _zi_emp_org.divisionText,
    _zi_emp_org.positionId,
    _zi_emp_org.positionTitle,
    _zi_emp_org.jobId,
    _zi_emp_org.jobTitle,
    _zi_emp_org.workLocationId,
    _zi_emp_org.workLocation,
    _zi_emp_org.costCenterId,
    _zi_emp_org.costCenterDesc,
    _zi_emp_org.personnelGroupId,
    _zi_emp_org.personnelGroupText,
    _zi_emp_org.actionDate,
    _zi_emp_org.actionType,
    _zi_emp_org.actionText,
    _zi_emp_org.employeeStatus,
    _zi_emp_org.statusText
}
