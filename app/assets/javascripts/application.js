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
//= require jquery
//= require rails-ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

const client = contentful.createClient({
    // This is the space ID. A space is like a project folder in Contentful terms
    space: 'yb9o88sn49vn',
    // This is the access token for this space. Normally you get both ID and the token in the Contentful web app
    accessToken: '333446c078f62c5f30f1a8ec8ed213dba8ea65c5483ab09e0a9dd81ec43e3eb4'
})