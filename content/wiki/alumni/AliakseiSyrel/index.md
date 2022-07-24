---
Title: Aliaksei Syrel
---
#Aliaksei Syrel
<img alt="AliakseiSyrel-avatar" src="%assets_url%/files/c1/ha5z8woyb3x19db2de1sx1qejplpsz/AliakseiSyrel-mountains-300x300.png" width=150 style="margin-top:0; display: block">
I am a bachelor student at the University of Bern in the Software Composition Group. Under the supervision of <a href="/staff/andreichis" target=_blank>Andrei Chiş</a> I work on my thesis in the area of embeding visualisations in user insterface or moldable tools.

I contribute to <a href="http://pharo.org/" target=_blank>Pharo</a> and currently work on <a href="https://github.com/feenkcom/Brick" target=_blank>Brick</a>, a project with the aim of bringing beautiful vector-based widgets on top of Bloc.

As part of <a href="http://gt.moosetechnology.org/" target=_blank>Glamorous Toolkit</a> team I am involved in building moldable tools and Pharo IDE.

<h1>Projects</h1>
<h1>Sparta</h1>
Sparta is an almost stateless vector graphics API for Pharo that provides bindings to the Moz2D rendering backend. Moz2D is the extracted graphical engine from Mozilla Firefox compiled as standalone shared library together with the extern C bindings required to call the engine from Pharo.

<div>Sparta won <a href="http://www.esug.org/wiki/pier/Conferences/2016/Innovation-Technology-Awards" target=_blank>2016 ESUG Innovation Technology Award</a>.</br>
<img alt="GoldSmallMedalAwardsESUG2016" src="%assets_url%/files/91/mv1ypxi77wfour7tzeqb64t4qt9hwe/Medalles2016gold.png" width=150 style="margin:0; display: inline;"></div>

<h2>Overview</h2>
<em>(All images are rendered using Sparta in Pharo)</em>
<img src="https://github.com/syrel/Sparta/raw/master/screenshots/Sparta-v1-Neon.png" alt="&quot;Sparta&quot; string rendered with applied neon filter" title="Neon filter" width=400 style="margin:0; display: block">

<h2>Backends</h2>
Moz2D, and as result Sparta, has support of native OS graphic engines, as well as cross platform ones.
On all platforms Sparta provides support of <a href="https://cairographics.org">Cairo</a> and <a href="https://skia.org/">Skia</a>. Additionally, high performant <a href="https://developer.apple.com/reference/coregraphics">CoreGraphics and CoreGraphics Accelerated</a> on Mac OS and <a href="https://msdn.microsoft.com/en-us/library/windows/desktop/dd317121(v=vs.85).aspx">Direct2D</a> on Windows.
In total Sparta supports 5 different rendering backends.

<h2>Text</h2>
One of the biggest improvements compared to existing graphics engines from Pharo is advanced high quality text rendering with multi-language support.
<img src="https://github.com/syrel/Sparta/raw/master/screenshots/Sparta-v1-Multilanguage.png" alt="Multilanguage support in Sparta" title="Sparta Multilanguage" width=400 style="margin:0; display: block">
The current Pharo text rendering engines draw a piece of text with one concrete font and style. If the font does not have an appropriate character, a stub glyph will be rendered instead.
Sparta introduces a notion of font groups that allow us to achieve a smooth fallback font detection based on the selected font style, language and missing glyphs. Fallback font support requires more complex text measurement, as multiple fonts faces are involved to render a single piece of text.

<h2>Filters</h2>
Since Sparta is based on the Moz2D backend that was designed for web browsers, we can get support for a wide variety of <a href="https://www.w3.org/TR/SVG/filters.html">filter primitives</a>. Sparta provides an ability to compose multiple filter primitives to get a single, advanced filter. For example, with the help of ColorMatrix and TableTransfer filters we can simulate some popular Instagram-like filters, for example Nashville, Inkwell or Brannan.
<img src="https://github.com/syrel/Sparta/raw/master/screenshots/Sparta-v1-Filters.png" alt="Instagram-like filters implemented with Sparta" title="Sparta Filters" width=400 style="margin:0; display: block\"">

<h2>Basic drawings</h2>
We should not forget that first of all Sparta is a vector graphics engine. It allows developers to create, fill and stroke custom paths and shapes. Together with gaussian blur, we can achieve astonishing results that were not possible before.
<img src="https://github.com/syrel/Sparta/raw/master/screenshots/Sparta-v1-Shapes.png" alt="Basic vector graphics in Sparta" title="Sparta Shapes" width=200 style="margin:0; display: block">

<h1>Brick</h1>
<a href="https://github.com/feenkcom/Brick" target=_blank>Brick</a> is a set of vector-based material design widgets for Pharo.
<br><img alt="Brick-Browser" src="%assets_url%/files/00/xyze0md1dwu74w5fado5xp4kjzljkk/Brick-Browser.png" width=400 style="margin:0; display: block">

<p>sponsored by ESUG as SummerTalk2015 project</p>
<img alt="Esug-logo" src="%assets_url%/files/cc/hgt7cu4r2n277rz57sdj5rq80u1o2u/esug-logo.jpg" width=200>

<h1>Spotter</h1>
<a href="/research/moldablespotter" target=_blank>Spotter</a> search tool for Pharo is my second project which started based on ideas of <a href="http://www.tudorgirba.com/" target=_blank>Tudor Gîrba</a>. Later on Spotter got a small international <a href="/research/moldablespotter#158967186" target=_blank>community</a> around.
<img alt="Spotter" src="%assets_url%/files/e4/luerik9na5zyug0ap03di025opb31c/Spotter.png" width=400><br>
Spotter won <a href="http://www.esug.org/wiki/pier/Conferences/2015/Innovation-Technology-Awards" target=_blank>2015 ESUG Innovation Technology Award</a>.</br>
<img alt="GoldSmallMedalAwardsESUG2015" src="%assets_url%/files/98/m9wc3cti1kbd0wmgja1t1nk4nvx0je/2015goldSmall.png" width=150 style="margin:0; display: block">

<h1>Pager for GT Inspector</h1>
My first project in the Software Composition Group was called Pager which supposed to <a href="http://www.humane-assessment.com/blog/gt-developments-endless-playground-memory-sharing-and-others/" target=_blank>improve</a> navigation in <a href="/research/moldableinspector" target=_blank>Moldable inspector</a>. As part of it I got familiar with Pharo language and started actively participated as contributor and community member.

<h1>Publications</h1>
<h1>2015</h1>
<ol>
<li class="entry"><a name="Chis15b"></a><span class="inproceedings"><span class="author">Andrei Chiş, Tudor Gîrba, Oscar Nierstrasz, and Aliaksei Syrel. <span class="title"><a href="/archive/papers/Chis15a-MoldableInspector.pdf">The Moldable Inspector</a>. <span class="publishing">In Proceedings of the 2015 ACM International Symposium on New Ideas, New Paradigms, and Reflections on Programming &amp; Software, Onward! 2015 p. to appear, ACM, New York, NY, USA, 2015.&nbsp;<a href="http://dx.doi.org/10.1145/2814228.2814234">DOI</a>&nbsp;<a href="/archive/papers/Chis15a-MoldableInspector.pdf">PDF</a>&nbsp;<a title="SCG Bibliography" class="bibfile" href="/scgbib?query=Chis15a&amp;display=abstract">â</a></li>

<li class="entry"><a name="Chis15b"></a><span class="inproceedings"><span class="author">Andrei Chiş, Tudor Gîrba, Oscar Nierstrasz, and Aliaksei Syrel. <span class="title"><a href="/archive/papers/Chis15b-GTInspector.pdf">GTInspector: A Moldable Domain-Aware Object Inspector</a>. <span class="publishing">In Proceedings of the Companion Publication of the 2015 ACM SIGPLAN Conference on Systems, Programming, and Applications: Software for Humanity, SPLASH '15 p. to appear, ACM, New York, NY, USA, 2015.&nbsp;<a href="http://dx.doi.org/10.1145/2814189.2814194">DOI</a>&nbsp;<a href="/archive/papers/Chis15b-GTInspector.pdf">PDF</a>&nbsp;<a title="SCG Bibliography" class="bibfile" href="/scgbib?query=Chis15b&amp;display=abstract">â</a></li>

<li class="entry"><a name="Kube15a"></a><span class="inproceedings"><span class="author">Juraj Kubelka, Alexandre Bergel, Andrei Chiş, Tudor Gîrba, Stefan Reichhart, Romain Robbes, and Aliaksei Syrel. <span class="title"><a href="/archive/papers/Kube15a-OnUnderstandingHowDevelopersUseTheSpotterSearchTool.pdf">On Understanding How Developers Use the Spotter Search Tool</a>. <span class="publishing">In Proceedings of 3rd IEEE Working Conference on Software Visualization - New Ideas and Emerging Results, VISSOFT-NIER'15 p. 145&mdash;149, IEEE, 2015.&nbsp;<a href="/archive/papers/Kube15a-OnUnderstandingHowDevelopersUseTheSpotterSearchTool.pdf">PDF</a>&nbsp;<a title="SCG Bibliography" class="bibfile" href="/scgbib?query=Kube15a&amp;display=abstract">â</a></li>

<li class="entry"><a name="Syre15a"></a><span class="inproceedings"><span class="author">Aliaksei Syrel, Andrei Chiş, Tudor Gîrba, Juraj Kubelka, Oscar Nierstrasz, and Stefan Reichhart. <span class="title"><a href="/archive/papers/Syre15a-SpotterPosterAbstract.pdf">Spotter: towards a unified search interface in IDEs</a>. <span class="publishing">In Proceedings of the Companion Publication of the 2015 ACM SIGPLAN Conference on Systems, Programming, and Applications: Software for Humanity, SPLASH '15 p. to appear, ACM, New York, NY, USA, 2015.&nbsp;<a href="http://dx.doi.org/10.1145/2814189.2817269">DOI</a>&nbsp;<a href="/archive/papers/Syre15a-SpotterPosterAbstract.pdf">PDF</a>&nbsp;<a title="SCG Bibliography" class="bibfile" href="/scgbib?query=Syre15a&amp;display=abstract">â</a></li>
</ol>

<h1>Awards</h1>
<ul>
<li><em><a title="http://www.esug.org/wiki/pier/Conferences/2016/Innovation-Technology-Awards" class="external" href="http://www.esug.org/wiki/pier/Conferences/2016/Innovation-Technology-Awards">European Smalltalk User Group 2016 Technology Innovation Award (1st prize)</a></em> for <a title="http://gt.moosetechnology.org/" class="external" href="/research/sparta">Sparta</a> by <a title="Aliaksei Syrel" class="internal page" href="/wiki/alumni/AliakseiSyrel">AliakseiSyrel</a></li>

<li><em><a title="http://www.esug.org/wiki/pier/Conferences/2015/Innovation-Technology-Awards" class="external" href="http://www.esug.org/wiki/pier/Conferences/2015/Innovation-Technology-Awards">European Smalltalk User Group 2015 Technology Innovation Award (1st prize)</a></em> for <a title="http://gt.moosetechnology.org/" class="external" href="http://gt.moosetechnology.org/">GT Spotter</a> by <a title="Aliaksei Syrel" class="internal page" href="/wiki/alumni/AliakseiSyrel">AliakseiSyrel</a>, <a title="Andrei Chiş" class="internal page" href="/staff/andreichis">Andrei Chiş</a>, <a title="http://www.tudorgirba.com/" class="external" href="http://www.tudorgirba.com/">Tudor Girba</a>, <a title="http://www.juraj-kubelka.cz/" class="external" href="http://www.juraj-kubelka.cz/">Juraj Kubelka</a> and Stefan Reichhart</li>

<li><em><a title="http://www.esug.org/wiki/pier/Conferences/2014/Innovation-Technology-Awards" class="external" href="http://www.esug.org/wiki/pier/Conferences/2014/Innovation-Technology-Awards">European Smalltalk User Group 2014 Technology Innovation Award (1st prize)</a></em> for <a title="http://gt.moosetechnology.org/" class="external" href="http://gt.moosetechnology.org/">GT Inspector</a> by <a title="Andrei Chiş" class="internal page" href="/staff/andreichis">Andrei Chiş</a>, <a title="http://www.tudorgirba.com/" class="external" href="http://www.tudorgirba.com/">Tudor Girba</a> and <a title="Aliaksei Syrel" class="internal page" href="/wiki/alumni/AliakseiSyrel">AliakseiSyrel</a></li></ul>

<h1>Talks</h1>
<ul>
<li> <em><a title="http://www.esug.org/wiki/pier/Conferences/2015/Conference-Schedule" class="external" href="http://www.esug.org/wiki/pier/Conferences/2015/Conference-Schedule">The Glamorous Toolkit for Pharo</a></em> by Andrei Chis and Aliaksei Syrel at <a title="http://www.esug.org/wiki/pier/Conferences/2015/" class="external" href="http://www.esug.org/wiki/pier/Conferences/2015/">ESUG</a> &mdash; Brescia, Italy, July 2015</li>
<li> <em><a title="https://archive.fosdem.org/2015/schedule/event/gt/" class="external" href="https://archive.fosdem.org/2015/schedule/event/gt/">GT - A new generation of development tools</a></em> by Andrei Chis and Aliaksei Syrel at <a title="https://archive.fosdem.org/2015/" class="external" href="https://archive.fosdem.org/2015/">Fosdem</a> &mdash; Brussels, Belgium, February 2015</li>
<li> <em><a title="https://medium.com/concerning-pharo/pharo-days-2015-6336d6ee2a23" class="external" href="https://medium.com/concerning-pharo/pharo-days-2015-6336d6ee2a23">The GT-Tools Revolution</a></em> by Andrei Chis, Aliaksei Syrel and Juraj Kubelka at <a title="https://medium.com/concerning-pharo/pharo-days-2015-6336d6ee2a23" class="external" href="https://medium.com/concerning-pharo/pharo-days-2015-6336d6ee2a23">Pharo Days</a> &mdash; Lille, France, January 2015 (<a title="https://www.youtube.com/watch?v=Nmcou_5um2s&amp;list=PL4actYd6bfnz98ngrKALwwStl3C3odEKG&amp;index=14" class="external" href="https://www.youtube.com/watch?v=Nmcou_5um2s&amp;list=PL4actYd6bfnz98ngrKALwwStl3C3odEKG&amp;index=14">video</a>)</li>
</ul>
