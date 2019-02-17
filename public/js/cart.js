$(function() {
    if (!$.fn.cookie('username')) {
        location.href = 'user_login.html';
    }
    /*获取购物车数据*/
    getCartData(function(data) {
            $('.cartBox').html(template('cartData', { data: data }))
        })
        /*点击编辑*/
    $('.cartBox').on('tap', '.edit_btn', function() {
            var id = $(this).data('id')
            location.href = "product.html?id=" + id + ""

        })
        /*点击删除*/
    $('.cartBox').on('tap', '.delete_btn', function() {
        var id = []
        id.push($(this).data('id'))
        deleteCartData({ id: id }, function(data) {
            if (data.success == true) {
                getCartData(function(data) {
                    $('.cartBox').html(template('cartData', { data: data }))
                })
            }
        })
    })
    var priceList = []
        /*点击单选框，计算价格*/
    $('.cartBox').on('tap', '.check', function() {
        if (!$(this).prop('checked')) {
            var price = $(this).parent().find('.price').text().replace(/\D/, '')
            var num = $(this).parent().find('.number').text().replace('双', '').replace('x', '')
            price *= parseInt(num)
            priceList.push(price)
        } else {
            var price = $(this).parent().find('.price').text().replace(/\D/, '')
            priceList.pop(price)
        }
        var num = 0
        for (var i = 0; i < priceList.length; i++) {
            num += parseFloat(priceList[i])
        }

        $('#cartAmount').text(num)

    })
})
var getCartData = function(callback) {
    $.ajax({
        type: 'get',
        url: '/cart/queryCart',
        dataType: 'json',
        success: function(data) {
            callback && callback(data);
        }
    });
};
var deleteCartData = function(id, callback) {
    $.ajax({
        type: 'get',
        url: '/cart/deleteCart',
        data: id,
        dataType: 'json',
        success: function(data) {
            callback && callback(data);
        }
    });
};
