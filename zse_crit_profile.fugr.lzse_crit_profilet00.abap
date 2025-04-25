*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 19.03.2025 at 13:10:33
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSE_CRIT_PROFILE................................*
DATA:  BEGIN OF STATUS_ZSE_CRIT_PROFILE              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSE_CRIT_PROFILE              .
CONTROLS: TCTRL_ZSE_CRIT_PROFILE
            TYPE TABLEVIEW USING SCREEN '9000'.
*.........table declarations:.................................*
TABLES: *ZSE_CRIT_PROFILE              .
TABLES: ZSE_CRIT_PROFILE               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
