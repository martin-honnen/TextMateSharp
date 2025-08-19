declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";

declare option output:method "xml";
declare option output:indent "yes";

<items>
{
fold-left(
  1 to 10, 
  random-number-generator(current-dateTime()),
  function($a, $i) {
	head($a)?next(),
	tail($a),
	<item>{(head($a)?number * 100) => floor()}</item>
  }
) => tail()
}
</items>