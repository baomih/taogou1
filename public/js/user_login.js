$(function() {
    $('.login_btn').on('tap', function() {
        var param = {
            username: $.trim($('[name="username"]').val()),
            password: $.trim($('[name="password"]').val())
        }
        if (!param.username || !param.password) {
            mui.toast('请输入用户名或密码');
            return false;
        }
        login(param, function(data) {
            if (data.success) {
                $.fn.cookie('username', param.username, { expires: 7 })
                location.href = 'user_index.html';
            } else if (data.error) {
                mui.toast(data.message);
            }
            $('.btn_login').html('登录');
        })
    })
})
var login = function(param, callback) {
    $.ajax({
        url: "/user/login",
        type: 'post',
        data: param,
        dataType: 'json',
        beforeSend: function() {
            $('.login_btn').html('正在登录...')
        },
        success: function(data) {
            callback && callback(data)
        }
    })
}
