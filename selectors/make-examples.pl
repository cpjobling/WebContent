#!/usr/bin/perl
# Make all style examples


while (my $style = <*.css>) {
  $style =~ s/\.css//;
  print "Found $style.css: making $style.html\n";
  open (FILE, ">$style.html") or die "Couldn't open $style.html\n";
  my $template =<<END_OF_TEMPLATE;
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<title>Antoni Gaud&iacute; - Introduction</title>
	<link rel="stylesheet" type="text/css" media="screen" href="${style}.css" />
</head>
<body>
<h1>Antoni Gaud&iacute;</h1>
<div id="gaudi">
<p>Many tourists are drawn to Barcelona to see Antoni Gaud&iacute's incredible architecture. </p>
<p>Barcelona <a href="http://www.gaudi2002.bcn.es/english/flash/home/GO.htm">celebrated</a> the 150th anniversary of Gaud&iacute;'s birth in 2002.</p>

<div class="works">
<h2>La Casa Mil&agrave;</h2>
<p>Gaud&iacute;'s work was essentially useful. La Casa Mil&agrave; is an apartment building and <em>real people</em> live there.</p>
</div>

<div class="works">
<h2>La Sagrada Fam&iacute;lia</h2>
<p>The complicatedly named and curiously unfinished Expiatory Temple of the Sacred Family is the <em>most visited</em> building in Barcelona. </p>
</div>

</div>

</body>
</html>

END_OF_TEMPLATE
	print FILE $template;
	close FILE;
}
