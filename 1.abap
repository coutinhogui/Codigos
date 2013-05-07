REPORT z00_select_sflight.

DATA itab TYPE TABLE OF sflight.

FIELD-SYMBOLS <fs> LIKE LINE OF itab.


SELECT * FROM sflight INTO TABLE itab.


LOOP AT itab ASSIGNING <fs>.

  WRITE: / <fs>-carrid, <fs>-connid, <fs>-fldate.

ENDLOOP.