SET @s := '
  foreach($a, $b : 0:2,3:4)
  {
    INSERT INTO test_cs.test_script_foreach VALUES (NULL, CONCAT($a, '','', $b));
  }
';
call run(@s);
SELECT * FROM test_cs.test_script_foreach;

