*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 19.03.2025 at 10:20:30
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSE_CRIT_ROLES..................................*
DATA:  BEGIN OF STATUS_ZSE_CRIT_ROLES                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSE_CRIT_ROLES                .
CONTROLS: TCTRL_ZSE_CRIT_ROLES
            TYPE TABLEVIEW USING SCREEN '9000'.
*.........table declarations:.................................*
TABLES: *ZSE_CRIT_ROLES                .
TABLES: ZSE_CRIT_ROLES                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
