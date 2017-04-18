/**
 * Created by yangx on 4/16/17.
 */

angular.module('myBlog')
.config(function ($stateProvider) {
    var homepageState ={
        name:'homepage',
        url:'/',
        template:'<h3>this is homepage</h3>'
    };
    var homeSate = {
        name:'home',
        url:'/home',
        template:'<h3>this is home</h3>'
    };
    var createBlog = {
        name:'createBlog',
        url:'/create-blog',
        template:'<h3>this is create-blog</h3>'
    };
    $stateProvider.state(homepageState);
    $stateProvider.state(homeSate);
    $stateProvider.state(createBlog);
})