<section id="bootstrap">
  <h2 class="page-header"><i class="fa fa-bold"></i> Bootstrap Examples</h2>
  <div class="row-fluid">
				<div class="span4">
      <p>
        <a class="btn btn-danger" href="#">
          <i class="fa fa-trash-o fa-lg"></i> Delete</a>
        <a class="btn btn-default btn-sm" href="#">
          <i class="fa fa-cog"></i> Settings</a>
      </p>
      <p>
        <a class="btn btn-lg btn-success" href="#">
          <i class="fa fa-flag fa-2x pull-left"></i> Font Awesome<br>Version 4.3.0</a>
      </p>
      <div class="margin-bottom">
        <div class="btn-group">
          <a class="btn btn-default" href="#"><i class="fa fa-align-left"></i></a>
          <a class="btn btn-default" href="#"><i class="fa fa-align-center"></i></a>
          <a class="btn btn-default" href="#"><i class="fa fa-align-right"></i></a>
          <a class="btn btn-default" href="#"><i class="fa fa-align-justify"></i></a>
        </div>
      </div>
	  <br />
      <div class="margin-bottom">
        <div class="input-group margin-bottom-sm">
          <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
          <input class="form-control" type="text" placeholder="Email address">
        </div>
		
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
          <input class="form-control" type="password" placeholder="Password">
        </div>
		
      </div>
	  <br/>
      <div class="margin-bottom">
        <div class="btn-group open">
          <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a>
          <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">
            <span class="fa fa-caret-down"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#"><i class="fa fa-pencil fa-fw"></i> Edit</a></li>
            <li><a href="#"><i class="fa fa-trash-o fa-fw"></i> Delete</a></li>
            <li><a href="#"><i class="fa fa-ban fa-fw"></i> Ban</a></li>
            <li class="divider"></li>
            <li><a href="#"><i class="i"></i> Make admin</a></li>
          </ul>
        </div>
      </div>

    </div>
    <div class="span8">
      <p>
        Font Awesome works great with the full range of Bootstrap components.
      </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-danger&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-trash-o fa-lg&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Delete<span class="nt">&lt;/a&gt;</span>
<span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-sm&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-cog&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Settings<span class="nt">&lt;/a&gt;</span>

<span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-lg btn-success&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-flag fa-2x pull-left&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Font Awesome<span class="nt">&lt;br&gt;</span>Version 4.3.0<span class="nt">&lt;/a&gt;</span>

<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;btn-group&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-align-left&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/a&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-align-center&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/a&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-align-right&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/a&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-align-justify&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/a&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;input-group margin-bottom-sm&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;input-group-addon&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-envelope-o fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/span&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Email address&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;input-group&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;input-group-addon&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-key fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;&lt;/span&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">type=</span><span class="s">&quot;password&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Password&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;btn-group open&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-user fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> User<span class="nt">&lt;/a&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary dropdown-toggle&quot;</span> <span class="na">data-toggle=</span><span class="s">&quot;dropdown&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;fa fa-caret-down&quot;</span><span class="nt">&gt;&lt;/span&gt;&lt;/a&gt;</span>
  <span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;dropdown-menu&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-pencil fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Edit<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-trash-o fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Delete<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;fa fa-ban fa-fw&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Ban<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
    <span class="nt">&lt;li</span> <span class="na">class=</span><span class="s">&quot;divider&quot;</span><span class="nt">&gt;&lt;/li&gt;</span>
    <span class="nt">&lt;li&gt;&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span><span class="nt">&gt;&lt;i</span> <span class="na">class=</span><span class="s">&quot;i&quot;</span><span class="nt">&gt;&lt;/i&gt;</span> Make admin<span class="nt">&lt;/a&gt;&lt;/li&gt;</span>
  <span class="nt">&lt;/ul&gt;</span>
<span class="nt">&lt;/div&gt;</span>
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