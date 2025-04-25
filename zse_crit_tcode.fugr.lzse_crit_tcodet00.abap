*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 13.03.2025 at 16:21:44
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSE_CRIT_TCODE..................................*
DATA:  BEGIN OF STATUS_ZSE_CRIT_TCODE                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSE_CRIT_TCODE                .
CONTROLS: TCTRL_ZSE_CRIT_TCODE
            TYPE TABLEVIEW USING SCREEN '9000'.
*.........table declarations:.................................*
TABLES: *ZSE_CRIT_TCODE                .
TABLES: ZSE_CRIT_TCODE                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
