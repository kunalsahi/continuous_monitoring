*----------------------------------------------------------------------*
***INCLUDE LZSE_CRIT_PROFILEF01.
*----------------------------------------------------------------------*
FORM update.
  FIELD-SYMBOLS: <fs_field> TYPE any.
  LOOP AT total.
    CHECK <action> EQ aendern.
** -- Updated By
    ASSIGN COMPONENT 'UNAME' OF STRUCTURE <vim_total_struc> TO <fs_field>.
    IF sy-subrc EQ 0.
      <fs_field> = sy-uname.
    ENDIF.
** -- Updated On
    ASSIGN COMPONENT 'AEDTM' OF STRUCTURE <vim_total_struc> TO <fs_field>.
    IF sy-subrc EQ 0.
      <fs_field> = sy-datum.
    ENDIF.
    READ TABLE extract WITH KEY <vim_xtotal_key>.
    IF sy-subrc EQ 0.
      extract = total.
      MODIFY extract INDEX sy-tabix.
    ENDIF.
    IF total IS NOT INITIAL.
      MODIFY total.
    ENDIF.
  ENDLOOP.
ENDFORM.
