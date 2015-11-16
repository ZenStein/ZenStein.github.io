<?php
//$array_html = file_get_contents('http://ruby-doc.org/core-2.2.0/Array.html');
//var_dump($array_html);

//preg_match_all("/<pre class=\"ruby\".*?>([^<]*)<\\/pre>/s", $array_html, $pre_tags);



?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../imgs/favicon.ico"/>
     <link rel="stylesheet" type="text/css" href="../stylesheets/default.css" />
     <link rel="stylesheet" type="text/css" href="../stylesheets/blog.css" />
    <title>BLog</title>
</head>

<body>
<div class="blog-carousel-container">
    <div class="blog-carousel-arrow blog-carousel-arrow-left">
        <img src="imgs/left-arrow.svg">
    </div>
    <div class="blog-carousel-picture-container"></div>
    <div class="blog-carousel-arrow blog-carousel-arrow-right">
        <img src="imgs/right-arrow.svg">
    </div>
</div>
<div class="blog-template-head">Ruby Docs Arrays & Hashes [Condensed]!!!<br>
    <small>For a quick refresh.....</small>
<div class="blog-body-desc">Blog Meta:</div>
<div class="blog-body">
    <p>Who this is for:</p>
	This blog is intended to help anyone who needs a quick refresh on syntax, an exact method name. Or maybe
	a super short and sweet input to output example.  There is no explanation for anything. Explanations can be found on
	the <a href="http://ruby-doc.org/core-2.2.0/Array.html" style="color:#ff0000;">Ruby Docs Arrays</a> Stay tuned for more
	as I will soon be adding a 'smart search' filter and pagination!

</div>
<div class="blog-body-desc">A message to beginners</div>
<div class="blog-body">
	 <p>The ability to work with and manipulating arrays is CRUCIAL in programming.</p>
    <p>Spend some time looking over all the available options.</p>
	 <p>Dedicate some time to re-writing the built in methods, I feel this leads to deeper understanding, which in the long run, will lesson your learning curve</p>
	 <p>Repitition is the key to mastery.</p>
	<p>Get the fundamentals down before moving on, this will save you time in the long run.</p>
	<p>happyCoding!</p>
</div>
    <div class="blog-body-desc">Taken from Ruby docs::</div>
<div class="blog-body">

<div class="blog-body">
<pre class="ruby"><span class="ruby-identifier">ary</span> = [<span class="ruby-value">1</span>, <span class="ruby-string">"two"</span>, <span class="ruby-value">3.0</span>] <span class="ruby-comment">#=&gt; [1, "two", 3.0]</span>
</pre><pre class="ruby"><span class="ruby-identifier">ary</span> = <span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>    <span class="ruby-comment">#=&gt; []</span>
<span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>(<span class="ruby-value">3</span>)       <span class="ruby-comment">#=&gt; [nil, nil, nil]</span>
<span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>(<span class="ruby-value">3</span>, <span class="ruby-keyword">true</span>) <span class="ruby-comment">#=&gt; [true, true, true]</span>
</pre><pre class="ruby"><span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>(<span class="ruby-value">4</span>) { <span class="ruby-constant">Hash</span>.<span class="ruby-identifier">new</span> } <span class="ruby-comment">#=&gt; [{}, {}, {}, {}]</span>
</pre><pre class="ruby"><span class="ruby-identifier">empty_table</span> = <span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>(<span class="ruby-value">3</span>) { <span class="ruby-constant">Array</span>.<span class="ruby-identifier">new</span>(<span class="ruby-value">3</span>) }
<span class="ruby-comment">#=&gt; [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]</span>
</pre><pre class="ruby"><span class="ruby-constant">Array</span>({:<span class="ruby-identifier">a</span> =<span class="ruby-operator">&gt;</span> <span class="ruby-string">"a"</span>, :<span class="ruby-identifier">b</span> =<span class="ruby-operator">&gt;</span> <span class="ruby-string">"b"</span>}) <span class="ruby-comment">#=&gt; [[:a, "a"], [:b, "b"]]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span> = [<span class="ruby-value">1</span>, <span class="ruby-value">2</span>, <span class="ruby-value">3</span>, <span class="ruby-value">4</span>, <span class="ruby-value">5</span>, <span class="ruby-value">6</span>]
<span class="ruby-identifier">arr</span>[<span class="ruby-value">2</span>]    <span class="ruby-comment">#=&gt; 3</span>
<span class="ruby-identifier">arr</span>[<span class="ruby-value">100</span>]  <span class="ruby-comment">#=&gt; nil</span>
<span class="ruby-identifier">arr</span>[<span class="ruby-value">-3</span>]   <span class="ruby-comment">#=&gt; 4</span>
<span class="ruby-identifier">arr</span>[<span class="ruby-value">2</span>, <span class="ruby-value">3</span>] <span class="ruby-comment">#=&gt; [3, 4, 5]</span>
<span class="ruby-identifier">arr</span>[<span class="ruby-value">1</span><span class="ruby-operator">..</span><span class="ruby-value">4</span>] <span class="ruby-comment">#=&gt; [2, 3, 4, 5]</span>
<span class="ruby-identifier">arr</span>[<span class="ruby-value">1</span><span class="ruby-operator">..</span><span class="ruby-value">-3</span>] <span class="ruby-comment">#=&gt; [2, 3, 4]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">at</span>(<span class="ruby-value">0</span>) <span class="ruby-comment">#=&gt; 1</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span> = [<span class="ruby-string">'a'</span>, <span class="ruby-string">'b'</span>, <span class="ruby-string">'c'</span>, <span class="ruby-string">'d'</span>, <span class="ruby-string">'e'</span>, <span class="ruby-string">'f'</span>]
<span class="ruby-identifier">arr</span>.<span class="ruby-identifier">fetch</span>(<span class="ruby-value">100</span>) <span class="ruby-comment">#=&gt; IndexError: index 100 outside of array bounds: -6...6</span>
<span class="ruby-identifier">arr</span>.<span class="ruby-identifier">fetch</span>(<span class="ruby-value">100</span>, <span class="ruby-string">"oops"</span>) <span class="ruby-comment">#=&gt; "oops"</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">first</span> <span class="ruby-comment">#=&gt; 1</span>
<span class="ruby-identifier">arr</span>.<span class="ruby-identifier">last</span>  <span class="ruby-comment">#=&gt; 6</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">take</span>(<span class="ruby-value">3</span>) <span class="ruby-comment">#=&gt; [1, 2, 3]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">drop</span>(<span class="ruby-value">3</span>) <span class="ruby-comment">#=&gt; [4, 5, 6]</span>
</pre><pre class="ruby"><span class="ruby-identifier">browsers</span> = [<span class="ruby-string">'Chrome'</span>, <span class="ruby-string">'Firefox'</span>, <span class="ruby-string">'Safari'</span>, <span class="ruby-string">'Opera'</span>, <span class="ruby-string">'IE'</span>]
<span class="ruby-identifier">browsers</span>.<span class="ruby-identifier">length</span> <span class="ruby-comment">#=&gt; 5</span>
<span class="ruby-identifier">browsers</span>.<span class="ruby-identifier">count</span> <span class="ruby-comment">#=&gt; 5</span>
</pre><pre class="ruby"><span class="ruby-identifier">browsers</span>.<span class="ruby-identifier">empty?</span> <span class="ruby-comment">#=&gt; false</span>
</pre><pre class="ruby"><span class="ruby-identifier">browsers</span>.<span class="ruby-identifier">include?</span>(<span class="ruby-string">'Konqueror'</span>) <span class="ruby-comment">#=&gt; false</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span> = [<span class="ruby-value">1</span>, <span class="ruby-value">2</span>, <span class="ruby-value">3</span>, <span class="ruby-value">4</span>]
<span class="ruby-identifier">arr</span>.<span class="ruby-identifier">push</span>(<span class="ruby-value">5</span>) <span class="ruby-comment">#=&gt; [1, 2, 3, 4, 5]</span>
<span class="ruby-identifier">arr</span> <span class="ruby-operator">&lt;&lt;</span> <span class="ruby-value">6</span>    <span class="ruby-comment">#=&gt; [1, 2, 3, 4, 5, 6]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">unshift</span>(<span class="ruby-value">0</span>) <span class="ruby-comment">#=&gt; [0, 1, 2, 3, 4, 5, 6]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">insert</span>(<span class="ruby-value">3</span>, <span class="ruby-string">'apple'</span>)  <span class="ruby-comment">#=&gt; [0, 1, 2, 'apple', 3, 4, 5, 6]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">insert</span>(<span class="ruby-value">3</span>, <span class="ruby-string">'orange'</span>, <span class="ruby-string">'pear'</span>, <span class="ruby-string">'grapefruit'</span>)
<span class="ruby-comment">#=&gt; [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span> =  [<span class="ruby-value">1</span>, <span class="ruby-value">2</span>, <span class="ruby-value">3</span>, <span class="ruby-value">4</span>, <span class="ruby-value">5</span>, <span class="ruby-value">6</span>]
<span class="ruby-identifier">arr</span>.<span class="ruby-identifier">pop</span> <span class="ruby-comment">#=&gt; 6</span>
<span class="ruby-identifier">arr</span> <span class="ruby-comment">#=&gt; [1, 2, 3, 4, 5]</span>
</pre><pre class="ruby"><span class="ruby-identifier">arr</span>.<span class="ruby-identifier">shift</span> <span class="ruby-comment">#=&gt; 1</span>
<span class="ruby-identifier">arr</span> <span class="ruby-comment">#=&gt; [2, 3, 4, 5]</span>
</pre><br><br><br>20


</div>
<?php
/*$str = '';
$cnt = 20; //count($pre_tags[0]);
for($i=0;$i<$cnt;$i++)
{
	$str .= $pre_tags[0][$i];
}
echo $str;
echo "<br><br><br>" . $cnt;*/

//print_r(htmlspecialchars($pre_tags[0]));
//print_r(htmlspecialchars_decode($pre_tags[0]));
//var_dump($pre_tags[0]);

?>



</div>
</div>
</body>
<footer class="blog-footer"></footer>
</html>















