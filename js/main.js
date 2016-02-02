var addressBook = angular.module('addressBook', ['ngRoute']);

addressBook.config(function ($routeProvider) {
  $routeProvider

  .when('/', {
    templateUrl: 'pages/main.html',
    controller: 'mainController'

  })

  .when('/add', {
    templateUrl: 'pages/add.html',
    controller: 'addController'
  });

});

addressBook.controller('mainController', function($scope, $log, $http, $location, $anchorScroll) {
  $scope.cssfile = "main";
  $location.hash('top');
  
  getList();
  function getList(){
    $http.post("includes/contactlist.php").success(function(data){
        $scope.contacts = data;
        //console.log(data);
    });
  }

  $scope.getContact = function (contactID) {
  	//console.log(contactID);
    $http.post("includes/getcontact.php?q="+contactID).success(function(data){
        //console.log(data);
        $scope.contactInfo = data;
      });
     $anchorScroll();
  };

  $scope.hideMsg = function() {
    var msg = document.querySelector('#msg');
    var info = document.querySelector('#contactInfo');
    //console.log(msg)
    msg.className = 'hidden';
    info.className = '';
  };
});

addressBook.controller('addController', function($scope, $log, $http) {
  $scope.cssfile = "main";

  $scope.addContact = function (name, title, company, cell, office, email, website, address) {
    //console.log(name);
    $http.post("includes/addcontact.php?name="+name+"&title="+title+"&company="+company+"&cell="+cell+"&office="+office+"&email="+email+"&website="+website+"&address="+address).success(function(data){
        //console.log(data);
        if(data == "User Added") {
          var formField = document.querySelectorAll('form input');
          for(i=0;i<formField.length;i++) {
            formField[i].value = '';
          }
        }
        $scope.msg = data;
      });
  };
});

/*Nav Active Effect*/
var nav = document.querySelectorAll("nav a");
var navBg = document.querySelectorAll("nav li");

function navActive() {
  for(i=0; i<navBg.length; i++) {
    navBg[i].className = "";
  }
  this.firstChild.className = "active";
}

for(i=0; i<nav.length; i++) {
  nav[i].addEventListener("click", navActive, false);
}

