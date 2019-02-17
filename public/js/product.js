$(function() {
    var id = parseInt(location.search.replace('?', '').split('=')[1])
        /*渲染数据*/
    $.ajax({
            url: '/product/queryProductDetail',
            type: 'get',
            data: { id: id },
            dataType: 'json',
            success: function(data) {
                $('#tg_container').append(template('detailTemplate', { data: data }))
            }
        })
        /*点击尺码*/
    var param = {}
    mui("#tg_container").on('tap', '.p_size span', function(event) {
        $(this).addClass('now').siblings().removeClass('now')
        param.size = parseInt($(this).text())
    });
    /*点击数量加减*/
    var num = 0
    $("#tg_container").on('tap', '.p_number span', function(event) {
        var max = parseInt($(this).siblings('input').attr('data-max'))
        if ($(this).hasClass('jian')) {
            num--
            if (num <= 0) {
                num = 0
            }
        } else if ($(this).hasClass('jia')) {
            num++
            if (num >= max) {
                num = max
            }
        }
        $(this).siblings('input').val(num)
        param.num = num

    });
    $('#tg_container').on('tap', '.btn_addCart', function() {
        param.productId = $(this).data('id')
        if (!$.fn.cookie('username')) {
            location.href = 'user_login.html';
        }
        addCartData(param, function(data) {
            if (data.success == true) {
                location.href = 'cart.html';
            }
        })
    })
    $('.fa-angle-left').on('tap', function() {
        history.back()
    })
    $('.btn_cart').on('tap', function() {
        location.href = 'cart.html'
        console.log(111)
    })
})
var addCartData = function(param, callback) {
    $.ajax({
        type: 'post',
        url: '/cart/addCart',
        data: param,
        dataType: 'json',
        success: function(data) {
            callback && callback(data);
        }
    });
};
