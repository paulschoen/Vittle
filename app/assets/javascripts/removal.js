// $(function () {
//     checkSuggestionPartial();
//     checkRestaurantPartial();
//
// });
//
// $(".render-restaurants").click(function () {
//     renderRestaurants();
// });
//
// $(".render-suggestions").click(function () {
//     renderSuggestions();
// });
//
// function checkRestaurantPartial() {
//     var city = $('#origin').data().city;
//     if (city) {
//         renderRestaurants();
//
//     }
// }
// function checkSuggestionPartial() {
//     var origin = $('#origin').data("origin")
//     if (origin) {
//         renderSuggestions();
//     }
// }
//
// function renderRestaurants() {
//     if ($('.partial-load').children().hasClass("suggestion-container")) {
//         $(".suggestion-container").replaceWith("<%= escape_javascript(render('get_restaurant'))%>");
//         $("#rest-tab").addClass(" active");
//         $('#sugg-tab').removeClass("active");
//     } else {
//         if ($('#restaurant-container').hasClass('restaurant-container')) {
//             $(".restaurant-container").replaceWith("<%= escape_javascript(render('get_restaurant'))%>");
//         } else {
//             $('.partial-load').append("<%= escape_javascript(render('get_restaurant'))%>");
//             $("#rest-tab").addClass(" active");
//         }
//     }
// }
//
// function renderSuggestions() {
//     if ($('.partial-load').children().hasClass("restaurant-container")) {
//         $("#restaurant-container").replaceWith("<%= escape_javascript(render('suggestions/get_suggestions', suggestions: @suggestions))%>");
//         $("#sugg-tab").addClass(" active");
//         $('#rest-tab').removeClass("active");
//     } else {
//         if ($('#suggestion-container').hasClass('suggestion-container')) {
//             console.log('inner if');
//             $(".suggestion-container").replaceWith("<%= escape_javascript(render('suggestions/get_suggestions', suggestions: @suggestions))%>");
//         } else {
//             $('.partial-load').append("<%= escape_javascript(render('suggestions/get_suggestions', suggestions: @suggestions))%>");
//             $("#sugg-tab").addClass(" active");
//         }
//     }
//
// }
