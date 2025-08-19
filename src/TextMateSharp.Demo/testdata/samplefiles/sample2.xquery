fold-left(
  1 to 10, 
  [random-number-generator(current-dateTime())],
  function($a, $i) {
    array:put($a, 1, $a?1?next()) => array:append(($a?1?number * 100) => floor() => xs:integer())
  }
) => array:tail() => array:flatten()
