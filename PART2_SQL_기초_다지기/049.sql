-- 049) ROW를 COLUMN으로 출력하기 (UNPIVOT)
SELECT *
  FROM order2
  UNPIVOT (건수 for 아이템 in (BICYCLE, CAMERA, NOTEBOOK));