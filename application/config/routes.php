<?php

$route['user'] = 'user';
$route['user/register'] = 'user/register';
 
$route['news'] = 'news';
$route['news/create'] = 'news/create';
 
$route['news/edit/(:any)'] = 'news/edit/$1';
 
$route['news/view/(:any)'] = 'news/view/$1';
$route['news/(:any)'] = 'news/view/$1';

?>
