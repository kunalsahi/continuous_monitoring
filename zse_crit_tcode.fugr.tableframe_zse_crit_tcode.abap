*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZSE_CRIT_TCODE
*   generation date: 13.03.2025 at 16:21:43
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZSE_CRIT_TCODE     .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
