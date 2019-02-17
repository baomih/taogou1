$(function() {
    if (!$.fn.cookie('username')) {
        location.href = 'user_login.html';
    }
    $.ajax({
        url: '/user/queryUserMessage',
        type: 'get',
        data: '',
        dataType: 'json',
        success: function(data) {
            $('.username').text(data.username)
            $('.mobile').text(data.mobile)
        }
    })
    $('.logout_btn').on('tap', function() {
        $.ajax({
            url: '/user/logout',
            type: 'get',
            data: '',
            dataType: 'json',
            success: function(data) {
                $.fn.cookie('username', 'null', { expires: -1 })
                if (data.success == true) {
                    location.href = 'user_login.html'
                }
            }
        })
    })
})
