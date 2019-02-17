$(function() {
    /*初始化区域滚动插件*/
    mui('.lala').scroll();
    mui('.haha').scroll({
        scrollY: false, //是否竖向滚动
        scrollX: true,
        indicators: false
    });
    mui('.mui-slider').slider({
        interval: 2000
    });
    downTime()
    getData(function(data) {
            $('.productbox').html(template('productList', data))
        })
        /*点击商品到商品详情*/
    mui(".productbox").on('tap', '.pro_item_box', function(event) {
        var id = $(this).attr('data-id')
        location.href = "product.html?id=" + id + ""
    });
    /*点击推荐、女鞋到搜索*/
    $('.haha').on('tap', 'a', function() {
        var key = $(this).text()
        $(this).addClass('active')
        $(this).parent().siblings().find('a').removeClass('active')
        location.href = 'searchlist.html?key=' + key + ''

    })
})
var downTime = function() {
    var time = 4 * 60 * 60
    var spans = $('.time span')

    var timer = setInterval(function() {
        time--
        var h = Math.floor(time / 3600)
        var m = Math.floor(time % 3600 / 60)
        var s = Math.floor(time % 60)

        spans[0].innerHTML = Math.floor(h / 10)
        spans[1].innerHTML = h % 10
        spans[3].innerHTML = Math.floor(m / 10)
        spans[4].innerHTML = m % 10
        spans[6].innerHTML = Math.floor(s / 10)
        spans[7].innerHTML = s % 10
    }, 1000)

    if (time <= 0) {
        clearInterval(timer)
    }
}
var getData = function(callback) {
    $.ajax({
        url: ' /product/queryProduct',
        type: 'get',
        data: { page: 1, pageSize: 10 },
        dataType: 'json',
        success: function(data) {
            callback && callback(data)
        }
    })
}
