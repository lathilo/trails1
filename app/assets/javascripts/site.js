/**
 * Created by thilo on 22.04.17.
 */
var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};

$(document).on('turbolinks:load ajaxSuccess',function(){

    $('.alert, .alert-info').delay(1500).fadeOut(1500);

    refreshRating();

    $('.image-zoom').elevateZoom({
        zoomType: 'lens',
        lensShape: 'round',
        lensSize: 150
    });
});