@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Org Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_EMP_ORG
  as select from    pa0001
  /* Employee Name */
    left outer join pa0002  as _EmployeeName on  _EmployeeName.pernr = pa0001.pernr
                                             and _EmployeeName.endda >= $session.system_date
                                             and _EmployeeName.begda <= $session.system_date
  /* Position Title */
    left outer join hrp1000                  on  hrp1000.plvar = '01'
                                             and hrp1000.otype = 'S'
                                             and hrp1000.objid = pa0001.plans
                                             and hrp1000.endda >= $session.system_date
                                             and hrp1000.begda <= $session.system_date
  /* Job Title */
    left outer join t513s                    on  t513s.sprsl = $session.system_language
                                             and t513s.stell = pa0001.stell
                                             and t513s.endda >= $session.system_date
                                             and t513s.begda <= $session.system_date
  /* Division */
    left outer join t527x                    on  t527x.sprsl = $session.system_language
                                             and t527x.orgeh = pa0001.y21hrdt_division
                                             and t527x.endda >= $session.system_date
                                             and t527x.begda <= $session.system_date
  /* Work Location */
    left outer join t500p                    on t500p.persa = pa0001.werks
  /* Cost Center */
    left outer join cskt                     on  cskt.spras = $session.system_language
                                             and cskt.kokrs = '1000'
                                             and cskt.kostl = pa0001.kostl
                                             and cskt.datbi >= $session.system_date
  /* Personnel Group */
    left outer join t501t                    on  t501t.sprsl = $session.system_language
                                             and t501t.persg = pa0001.persg
  /* Infotype 0000 (Employee Actions) */
    left outer join pa0000                   on  pa0000.pernr = pa0001.pernr
                                             and pa0000.begda <= $session.system_date
                                             and pa0000.endda >= $session.system_date
    left outer join t529u                    on  t529u.sprsl = $session.system_language
                                             and t529u.statn = '2'
                                             and t529u.statv = pa0000.stat2
    left outer join t529t                    on  t529t.sprsl = $session.system_language
                                             and t529t.massn = pa0000.massn
  /* Find Manager Position */
    left outer join hrp1001 as mgr_pos       on  mgr_pos.otype = 'S'
                                             and mgr_pos.objid = pa0001.plans
                                             and mgr_pos.rsign = 'A'
                                             and mgr_pos.relat = '002'
                                             and mgr_pos.begda <= $session.system_date
                                             and mgr_pos.endda >= $session.system_date
                                             and mgr_pos.sclas = 'S'

  /* Find Manager Personnel Number */
    left outer join hrp1001 as mgr_pers      on  mgr_pers.otype = 'S'
                                             and mgr_pers.objid = mgr_pos.sobid
                                             and mgr_pers.rsign = 'A'
                                             and mgr_pers.relat = '008'
                                             and mgr_pers.begda <= $session.system_date
                                             and mgr_pers.endda >= $session.system_date
                                             and mgr_pers.sclas = 'P'
  /* Get Manager Name from PA0002 */
    left outer join pa0002  as _ManagerName  on  _ManagerName.pernr = mgr_pers.sobid
                                             and _ManagerName.endda >= $session.system_date
                                             and _ManagerName.begda <= $session.system_date
{
  key pa0001.pernr                                                     as employeeId,
      CONCAT_WITH_SPACE( _EmployeeName.vorna, _EmployeeName.nachn, 1 ) as employeeName,
      _ManagerName.pernr                                               as managerId,
      CONCAT_WITH_SPACE( _ManagerName.vorna, _ManagerName.nachn, 1 )   as managerName,
      pa0001.y21hrdt_career_lvl                                        as careerLevel,
      pa0001.y21hrdt_division                                          as division,
      t527x.orgtx                                                      as divisionText,
      pa0001.plans                                                     as positionId,
      hrp1000.stext                                                    as positionTitle,
      pa0001.stell                                                     as jobId,
      t513s.stltx                                                      as jobTitle,
      pa0001.werks                                                     as workLocationId,
      t500p.name1                                                      as workLocation,
      pa0001.kostl                                                     as costCenterId,
      cskt.ktext                                                       as costCenterDesc,
      pa0001.persg                                                     as personnelGroupId,
      t501t.ptext                                                      as personnelGroupText,
      pa0000.begda                                                     as actionDate,
      pa0000.massn                                                     as actionType,
      t529t.mntxt                                                      as actionText,
      pa0000.stat2                                                     as employeeStatus,
      t529u.text1                                                      as statusText
}
where
      pa0001.endda >= $session.system_date
  and pa0001.begda <= $session.system_date
