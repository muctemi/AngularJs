<%-- 
    Document   : index
    Created on : 15.Ara.2014, 11:43:22
    Author     : tibuserxx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="demoApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>

<div>
<div ng-view=""></div>
</div>
<script src="Scripts/angular.min.js"></script>
<script src="Scripts/angular-route.js"></script>

<script>
    var demoApp = angular.module('demoApp',['ngRoute']);
    
    demoApp.config(function ($routeProvider) {
        $routeProvider
        .when('/',
        {
            controller:'SimpleController',
            templateUrl:'View1.html'
        }) 
        .when('/view2',
        {
            controller:'SimpleController',
            templateUrl:'View2.html'
        })
        .otherwise({ redirectTo:'/' });        
    });
        
    
    demoApp.controller('SimpleController', function ($scope)
    {
        $scope.customers = [{name:'ali veli',city:'Ankara'},{name:'orhan devran',city:'Istanbul'},{name:'demba ba',city:'senagal'}]
        $scope.addCustomer = function (){
            $scope.customers.push(
        {
          name:$scope.newCustomer.name,
          city:$scope.newCustomer.city
        }
        )};
        
    }); 
            
     
</script>

</body>
</html>
