/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
'use strict';

particlesJS.load('particles-js', 'lib/particles-2.0.0/particles.json', function() {
  console.log('callback - particles.js config loaded');
});

angular.module('myBlog',[
    'ngRoute',
    'myBlog.homepage',
    'ui.router'
])


