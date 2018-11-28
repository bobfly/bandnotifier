// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require Chart.min
//= require_tree .



$(document).ready(function(){

  $.fn.datepicker.dates['hr'] = {
    days: ["Nedjelja", "Ponedjeljak", "Utorak", "Srijeda", "Cetvrtak", "Petak", "Subota"],
    daysShort: ["Ned", "Pon", "Uto", "Sri", "Cet", "Pet", "Sub"],
    daysMin: ["Ne", "Po", "Ut", "Sr", "Ce", "Pe", "Su"],
    months: ["Sijecanj", "Veljaca", "Ozujak", "Travanj", "Svibanj", "Lipanj", "Srpanj", "Kolovoz", "Rujan", "Listopad", "Studeni", "Prosinac"],
    monthsShort: ["Sij", "Velj", "Ozu", "Tra", "Svi", "Lip", "Srp", "Kol", "Ruj", "Lis", "Stu", "Pro"],
    today: "Danas",
    clear: "ocisti",
    format: "mm.dd.yyyy",
    titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
    weekStart: 0
};


  $(".datepicker").datepicker({
    language: "hr"
  });
})