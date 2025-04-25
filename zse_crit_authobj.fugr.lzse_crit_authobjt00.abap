*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 14.03.2025 at 13:02:13
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSE_CRIT_AUTHOBJ................................*
DATA:  BEGIN OF STATUS_ZSE_CRIT_AUTHOBJ              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSE_CRIT_AUTHOBJ              .
CONTROLS: TCTRL_ZSE_CRIT_AUTHOBJ
            TYPE TABLEVIEW USING SCREEN '9000'.
*.........table declarations:.................................*
TABLES: *ZSE_CRIT_AUTHOBJ              .
TABLES: ZSE_CRIT_AUTHOBJ               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
