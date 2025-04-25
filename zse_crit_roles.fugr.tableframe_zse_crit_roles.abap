*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZSE_CRIT_ROLES
*   generation date: 19.03.2025 at 10:20:29
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZSE_CRIT_ROLES     .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
