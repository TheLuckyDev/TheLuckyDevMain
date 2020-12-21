<section id="stacked">
  <h2 class="page-header"><i class="fa fa-square-o"></i> Stacked Icons</h2>
  <div class="row-fluid">
				<div class="span3">
      <div class="margin-bottom">
        <span class="fa-stack fa-lg">
          <i class="fa fa-square-o fa-stack-2x"></i>
          <i class="fa fa-twitter fa-stack-1x"></i>
        </span>
        fa-twitter on fa-square-o<br>
        <span class="fa-stack fa-lg">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-flag fa-stack-1x fa-inverse"></i>
        </span>
        fa-flag on fa-circle<br>
        <span class="fa-stack fa-lg">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>
        </span>
        fa-terminal on fa-square<br>
        <span class="fa-stack fa-lg">
          <i class="fa fa-camera fa-stack-1x"></i>
          <i class="fa fa-ban fa-stack-2x text-danger"></i>
        </span>
        fa-ban on fa-camera
      </div>
    </div>
    <div class="span9">
      <p>
        To stack multiple icons, use the <code>fa-stack</code> class on the parent, the <code>fa-stack-1x</code>
        for the regularly sized icon, and <code>fa-stack-2x</code> for the larger icon. <code>fa-inverse</code>
        can be used as an alternative icon color. You can even throw larger icons classes on the parent
        to get further control of sizing.
      </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;fa-stack fa-lg&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-square-o fa-stack-2x&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-twitter fa-stack-1x&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
<span class="nt">&lt;/span&gt;</span>
fa-twitter on fa-square-o<span class="nt">&lt;br&gt;</span>
<span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;fa-stack fa-lg&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-circle fa-stack-2x&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-flag fa-stack-1x fa-inverse&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
<span class="nt">&lt;/span&gt;</span>
fa-flag on fa-circle<span class="nt">&lt;br&gt;</span>
<span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;fa-stack fa-lg&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-square fa-stack-2x&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-terminal fa-stack-1x fa-inverse&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
<span class="nt">&lt;/span&gt;</span>
fa-terminal on fa-square<span class="nt">&lt;br&gt;</span>
<span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;fa-stack fa-lg&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-camera fa-stack-1x&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-ban fa-stack-2x text-danger&quot;</span><span class="nt">&gt;&lt;/i&gt;</span>
<span class="nt">&lt;/span&gt;</span>
fa-ban on fa-camera
</code></pre></div>
    </div>
  </div>
</section>

{ia_add_js}
	$(document).ready(function() {

		// make code pretty
		window.prettyPrint && prettyPrint();

	});
{/ia_add_js}

{ia_print_js files='_IA_URL_plugins/iafontawesome/js/front/google-code-prettify/prettify'}
{ia_print_css files='_IA_URL_plugins/iafontawesome/templates/front/css/iabootstrap, _IA_URL_plugins/iafontawesome/js/front/google-code-prettify/prettify'}