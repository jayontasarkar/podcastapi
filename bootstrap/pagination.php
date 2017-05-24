<?php 

use Illuminate\Pagination\Paginator;

Paginator::currentPathResolver(function(){
	return getenv('APP_URL') . strtok($_SERVER['REQUEST_URI'], '?');
});

Paginator::currentPageResolver(function(){
	return isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
});