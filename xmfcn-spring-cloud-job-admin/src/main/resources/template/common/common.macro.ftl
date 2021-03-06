<#macro commonStyle>

<#-- favicon -->
	<link rel="icon" href="/job/favicon.ico"/>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/job/adminlte/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
    <link rel="stylesheet" href="/job/plugins/font-awesome-4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
    <link rel="stylesheet" href="/job/plugins/ionicons-2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/job/adminlte/dist/css/AdminLTE-local.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/job/adminlte/dist/css/skins/_all-skins.min.css">
      
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <link rel="stylesheet" href="/job/treeview/bootstrap-treeview.css">
	<!-- pace -->
	<link rel="stylesheet" href="/job/plugins/pace/themes/pace-theme-flash.css">

<style>
    .list-group-item {
        position: relative;
        display: block;
        padding: 10px 15px;
        margin-bottom: -1px;
        font-size: 15px;
        color: #06050e;
    }
</style>
<#-- i18n -->
    <#global I18n = I18nUtil.getMultString()?eval />

</#macro>

<#macro commonScript>
	<!-- jQuery 2.1.4 -->
	<script src="/job/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="/job/adminlte/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="/job/adminlte/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/job/adminlte/dist/js/app.min.js"></script>
<#-- jquery.slimscroll -->
	<script src="/job/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>

    <!-- pace -->
    <script src="/job/plugins/pace/pace.min.js"></script>

<#-- layer -->
	<script src="/job/plugins/layer/layer.js"></script>

<#-- common -->
<script src="/job/treeview/bootstrap-treeview.js"></script>
<script src="/job/js/user.menu.tree.js"></script>
 <script src="/job/js/common.1.js"></script>
    <script>
        var base_url = '${request.contextPath}/job';
        if (base_url.indexOf("https") < 0) {
            base_url = base_url.replace('http', 'https')
        }
        if (base_url.indexOf("https") < 0) {
            base_url = base_url.replace('http', 'https')
        }
        var I18n = ${I18nUtil.getMultString()};


    </script>

</#macro>
<#--
??????????????????  https://www.cnblogs.com/chenhtblog/p/8507752.html
-->
<#macro commonHeader>
	<header class="main-header">
        <a href="${request.contextPath}/job/" class="logo">
            <span class="logo-mini"><b>XMF</b></span>
            <span class="logo-lg"><b>${I18n.admin_name}</b></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"><span
                    class="sr-only">????????????33</span></a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href=";" id="logoutBtn" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <span class="hidden-xs">${I18n.logout_btn}</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</#macro>

<#macro commonLeft pageName >
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <div id="treeview"></div>
            <!--
          <ul class="sidebar-menu">
              <li class="menu_header">??????</li>
              <ul class="sidebar_menu_list">
                  <li class="nav-click <#if pageName == "codeScheme">active</#if>"><a
                          href="${request.contextPath}/job/codeScheme"><i
                          class="fa fa-circle-o text-aqua"></i><span>??????????????????</span></a></li>
                  <li class="nav-click <#if pageName == "codeTable">active</#if>"><a
                          href="${request.contextPath}/job/codeTable"><i
                          class="fa fa-circle-o text-yellow"></i><span>???????????????</span></a></li>
                  <li class="nav-click <#if pageName == "codeTable">active</#if>"><a
                          href="${request.contextPath}/job/codeTableColumn"><i
                          class="fa fa-circle-o text-yellow"></i><span>???????????????</span></a></li>
                  <li class="nav-click <#if pageName == "codeTable">active</#if>"><a
                          href="${request.contextPath}/job/user"><i
                          class="fa fa-circle-o text-yellow"></i><span>??????</span></a></li>
              </ul>
          </ul>-->
        </section>
        <!-- /.sidebar -->
    </aside>
</#macro>

<#macro commonFooter >
	<footer class="main-footer">
        <b>MF-JOB</b> ${I18n.admin_version}
        <div class="pull-right hidden-xs">
            <strong>Copyright &copy; 2015-${.now?string('yyyy')} &nbsp;
                <a href="https://www.kafeijie.com" target="_blank">?????????</a>
            </strong><!-- All rights reserved. -->
        </div>
    </footer>
</#macro>