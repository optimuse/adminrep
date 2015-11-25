<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/pages/include/taglib.jsp" %>
<!DOCTYPE>
<html>
  <head>
    <title>treeview</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	<%@include file="/WEB-INF/pages/include/public.jsp" %>
	<!-- page specific plugin scripts -->
	<script src="${ctxStatic}/assets/js/fuelux/fuelux.tree.js"></script>
	
  </head>
  
  <body class="no-skin">
   <!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
 		 	<%@include file="/WEB-INF/pages/include/head.jsp" %>  
		</div>
		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<%@include file="/WEB-INF/pages/include/sidebar.jsp" %>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">
						<!-- #section:settings.box -->
						<div class="ace-settings-container" id="ace-settings-container">
							<%@include file="/WEB-INF/pages/include/setting.jsp" %>
						</div><!-- /.ace-settings-container -->

						<!-- /section:settings.box -->
						<div class="page-header">
							<h1>
								Dashboard
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<!-- #section:plugins/fuelux.treeview -->
								<div class="row">
									<div class="col-sm-6">
										<div class="widget-box widget-color-blue2">
											<div class="widget-header">
												<h4 class="widget-title lighter smaller">Choose Categories</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-8">
													<ul id="tree1"></ul>
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="widget-box widget-color-green2">
											<div class="widget-header">
												<h4 class="widget-title lighter smaller">
													Browse Files
													<span class="smaller-80">(with selectable folders)</span>
												</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-8">
													<ul id="tree2"></ul>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- /section:plugins/fuelux.treeview -->
								<script type="text/javascript">
									var $assets = "../assets";//this will be used in fuelux.tree-sampledata.js
								</script>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		
		<script type="text/javascript">
			jQuery(function($){
	var sampleData = initiateDemoData();//see below


	$('#tree1').ace_tree({
		dataSource: sampleData['dataSource1'],
		multiSelect: true,
		cacheItems: true,
		'open-icon' : 'ace-icon tree-minus',
		'close-icon' : 'ace-icon tree-plus',
		'itemSelect' : true,
		'folderSelect': false,
		'selected-icon' : 'ace-icon fa fa-check',
		'unselected-icon' : 'ace-icon fa fa-times',
		loadingHTML : '<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>'
	});
	
	$('#tree2').ace_tree({
		dataSource: sampleData['dataSource2'] ,
		loadingHTML:'<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>',
		'open-icon' : 'ace-icon fa fa-folder-open',
		'close-icon' : 'ace-icon fa fa-folder',
		'itemSelect' : true,
		'folderSelect': true,
		'multiSelect': true,
		'selected-icon' : null,
		'unselected-icon' : null,
		'folder-open-icon' : 'ace-icon tree-plus',
		'folder-close-icon' : 'ace-icon tree-minus'
	});
	
	
	/**
	//Use something like this to reload data	
	$('#tree1').find("li:not([data-template])").remove();
	$('#tree1').tree('render');
	*/
	
	
	/**
	//please refer to docs for more info
	$('#tree1')
	.on('loaded.fu.tree', function(e) {
	})
	.on('updated.fu.tree', function(e, result) {
	})
	.on('selected.fu.tree', function(e) {
	})
	.on('deselected.fu.tree', function(e) {
	})
	.on('opened.fu.tree', function(e) {
	})
	.on('closed.fu.tree', function(e) {
	});
	*/
	
	
	function initiateDemoData(){
		var tree_data = {
			'for-sale' : {text: 'For Sale', type: 'folder'}	,
			'vehicles' : {text: 'Vehicles', type: 'folder'}	,
			'rentals' : {text: 'Rentals', type: 'folder'}	,
			'real-estate' : {text: 'Real Estate', type: 'folder'}	,
			'pets' : {text: 'Pets', type: 'folder'}	,
			'tickets' : {text: 'Tickets', type: 'item'}	,
			'services' : {text: 'Services', type: 'item'}	,
			'personals' : {text: 'Personals', type: 'item'}
		}
		tree_data['for-sale']['additionalParameters'] = {
			'children' : {
				'appliances' : {text: 'Appliances', type: 'item'},
				'arts-crafts' : {text: 'Arts & Crafts', type: 'item'},
				'clothing' : {text: 'Clothing', type: 'item'},
				'computers' : {text: 'Computers', type: 'item'},
				'jewelry' : {text: 'Jewelry', type: 'item'},
				'office-business' : {text: 'Office & Business', type: 'item'},
				'sports-fitness' : {text: 'Sports & Fitness', type: 'item'}
			}
		}
		tree_data['vehicles']['additionalParameters'] = {
			'children' : {
				'cars' : {text: 'Cars', type: 'folder'},
				'motorcycles' : {text: 'Motorcycles', type: 'item'},
				'boats' : {text: 'Boats', type: 'item'}
			}
		}
		tree_data['vehicles']['additionalParameters']['children']['cars']['additionalParameters'] = {
			'children' : {
				'classics' : {text: 'Classics', type: 'item'},
				'convertibles' : {text: 'Convertibles', type: 'item'},
				'coupes' : {text: 'Coupes', type: 'item'},
				'hatchbacks' : {text: 'Hatchbacks', type: 'item'},
				'hybrids' : {text: 'Hybrids', type: 'item'},
				'suvs' : {text: 'SUVs', type: 'item'},
				'sedans' : {text: 'Sedans', type: 'item'},
				'trucks' : {text: 'Trucks', type: 'item'}
			}
		}

		tree_data['rentals']['additionalParameters'] = {
			'children' : {
				'apartments-rentals' : {text: 'Apartments', type: 'item'},
				'office-space-rentals' : {text: 'Office Space', type: 'item'},
				'vacation-rentals' : {text: 'Vacation Rentals', type: 'item'}
			}
		}
		tree_data['real-estate']['additionalParameters'] = {
			'children' : {
				'apartments' : {text: 'Apartments', type: 'item'},
				'villas' : {text: 'Villas', type: 'item'},
				'plots' : {text: 'Plots', type: 'item'}
			}
		}
		tree_data['pets']['additionalParameters'] = {
			'children' : {
				'cats' : {text: 'Cats', type: 'item'},
				'dogs' : {text: 'Dogs', type: 'item'},
				'horses' : {text: 'Horses', type: 'item'},
				'reptiles' : {text: 'Reptiles', type: 'item'}
			}
		}

		var dataSource1 = function(options, callback){
			var $data = null
			if(!("text" in options) && !("type" in options)){
				$data = tree_data;//the root tree
				callback({ data: $data });
				return;
			}
			else if("type" in options && options.type == "folder") {
				if("additionalParameters" in options && "children" in options.additionalParameters)
					$data = options.additionalParameters.children || {};
				else $data = {}//no data
			}
			
			if($data != null)//this setTimeout is only for mimicking some random delay
				setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);

			//we have used static data here
			//but you can retrieve your data dynamically from a server using ajax call
			//checkout examples/treeview.html and examples/treeview.js for more info
		}




		var tree_data_2 = {
			'pictures' : {text: 'Pictures', type: 'folder', 'icon-class':'red'}	,
			'music' : {text: 'Music', type: 'folder', 'icon-class':'orange'}	,
			'video' : {text: 'Video', type: 'folder', 'icon-class':'blue'}	,
			'documents' : {text: 'Documents', type: 'folder', 'icon-class':'green'}	,
			'backup' : {text: 'Backup', type: 'folder'}	,
			'readme' : {text: '<i class="ace-icon fa fa-file-text grey"></i> ReadMe.txt', type: 'item'},
			'manual' : {text: '<i class="ace-icon fa fa-book blue"></i> Manual.html', type: 'item'}
		}
		tree_data_2['music']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-music blue"></i> song1.ogg', type: 'item'},
				{text: '<i class="ace-icon fa fa-music blue"></i> song2.ogg', type: 'item'},
				{text: '<i class="ace-icon fa fa-music blue"></i> song3.ogg', type: 'item'},
				{text: '<i class="ace-icon fa fa-music blue"></i> song4.ogg', type: 'item'},
				{text: '<i class="ace-icon fa fa-music blue"></i> song5.ogg', type: 'item'}
			]
		}
		tree_data_2['video']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-film blue"></i> movie1.avi', type: 'item'},
				{text: '<i class="ace-icon fa fa-film blue"></i> movie2.avi', type: 'item'},
				{text: '<i class="ace-icon fa fa-film blue"></i> movie3.avi', type: 'item'},
				{text: '<i class="ace-icon fa fa-film blue"></i> movie4.avi', type: 'item'},
				{text: '<i class="ace-icon fa fa-film blue"></i> movie5.avi', type: 'item'}
			]
		}
		tree_data_2['pictures']['additionalParameters'] = {
			'children' : {
				'wallpapers' : {text: 'Wallpapers', type: 'folder', 'icon-class':'pink'},
				'camera' : {text: 'Camera', type: 'folder', 'icon-class':'pink'}
			}
		}
		tree_data_2['pictures']['additionalParameters']['children']['wallpapers']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper1.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper2.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper3.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper4.jpg', type: 'item'}
			]
		}
		tree_data_2['pictures']['additionalParameters']['children']['camera']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo1.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo2.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo3.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo4.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo5.jpg', type: 'item'},
				{text: '<i class="ace-icon fa fa-picture-o green"></i> photo6.jpg', type: 'item'}
			]
		}


		tree_data_2['documents']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-file-text red"></i> document1.pdf', type: 'item'},
				{text: '<i class="ace-icon fa fa-file-text grey"></i> document2.doc', type: 'item'},
				{text: '<i class="ace-icon fa fa-file-text grey"></i> document3.doc', type: 'item'},
				{text: '<i class="ace-icon fa fa-file-text red"></i> document4.pdf', type: 'item'},
				{text: '<i class="ace-icon fa fa-file-text grey"></i> document5.doc', type: 'item'}
			]
		}

		tree_data_2['backup']['additionalParameters'] = {
			'children' : [
				{text: '<i class="ace-icon fa fa-archive brown"></i> backup1.zip', type: 'item'},
				{text: '<i class="ace-icon fa fa-archive brown"></i> backup2.zip', type: 'item'},
				{text: '<i class="ace-icon fa fa-archive brown"></i> backup3.zip', type: 'item'},
				{text: '<i class="ace-icon fa fa-archive brown"></i> backup4.zip', type: 'item'}
			]
		}
		var dataSource2 = function(options, callback){
			var $data = null
			if(!("text" in options) && !("type" in options)){
				$data = tree_data_2;//the root tree
				callback({ data: $data });
				return;
			}
			else if("type" in options && options.type == "folder") {
				if("additionalParameters" in options && "children" in options.additionalParameters)
					$data = options.additionalParameters.children || {};
				else $data = {}//no data
			}
			
			if($data != null)//this setTimeout is only for mimicking some random delay
				setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);

			//we have used static data here
			//but you can retrieve your data dynamically from a server using ajax call
			//checkout examples/treeview.html and examples/treeview.js for more info
		}

		
		return {'dataSource1': dataSource1 , 'dataSource2' : dataSource2}
	}

});
		</script>
		
  </body>
</html>
