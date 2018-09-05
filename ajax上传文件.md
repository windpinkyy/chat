//文件上传
function ajaxFileUpload() {
    $.ajaxFileUpload
    ({
        url: '/ApproveListHandler.aspx?Type=UpLoadAttachment', //用于文件上传的服务器端请求地址
        secureuri: false, //是否需要安全协议，一般设置为false
        fileElementId: 'txtAttachment', //文件上传域的ID
        dataType: 'json', //返回值类型 一般设置为json
        success: function (data, status)  //服务器成功响应处理函数
        {
            if (typeof (data.error) != 'undefined') {
                if (data.error != '') {
                    $("#attTable").append("<tr class='attContent'><td class='att_title' colspan='2' >" + "附件添加失败" + "</td></tr>");
                } else { 
                    var displayName = data.oldFileName;
                    var fullname = data.fileName;
                    allAttFullPath = allAttFullPath + fullname + "*";
                    $("#hdAttContent").val(allAttFullPath);
                    $("#attTable").append("<tr class='attContent'><td class='att_title'>" + displayName + "</td><td onclick='delTr(this);' class='delTd'><input type='hidden' value='" + fullname + "' /><img src='/images/selected/list_delete.png'></td></tr>");
                      }
            }
        },
        error: function (data, status, e)//服务器响应失败处理函数
        {
            $("#attTable").append("<tr class='attContent'><td class='att_title' colspan='2' >" + "附件添加失败,服务器响应失败,请联系管理员" + "</td></tr>");
        }
    });
    return false;
}