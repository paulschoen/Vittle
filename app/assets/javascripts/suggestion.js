// $(document).on('turbolinks:load', function() {
//   $('.render-restaurants').on('click', function(){
//     $('.myButtonLocation').each(function(index, button){
//       $(button).on('click', function(e) {
//         // var businessId = $(this).data().businessId;
//         // var suggestionBody = $('#suggestion_body').val();
//         e.preventDefault();
//         var data = JSON.stringify({
//           suggestion: {
//             body: 'Great!',
//             yelp_id: '1',
//             users_name: 'joe',
//             latitude: 10.0,
//             longitude: 10.0,
//             menu_item: 'taco',
//             users_city: 'Miami'
//           }
//         });
//         $.ajax({
//           url: '/suggestions',
//           method: 'POST',
//           contentType: "application/json; charset=utf-8",
//           dataType: "json",
//           data: data
//         })
//         .done(function() {
//           console.log("SUCCESS");
//           console.log(arguments);
//         }).fail(function() {
//           console.log("FAILURE");
//           console.log(arguments);
//         });
//       });
//     });
//   });
//
//   function buttonClick() {
//     // $.ajax({
//     //   url: '/suggestions',
//     //   method: 'POST',
//     //   contentType: "application/json; charset=utf-8",
//     //   dataType: "json"
//     // })
//     // .done(function() {
//     //   console.log("SUCCESS");
//     //   console.log(arguments);
//     // }).fail(function() {
//     //   console.log("FAILURE");
//     //   console.log(arguments);
//     // }).success();
//   }
// });
