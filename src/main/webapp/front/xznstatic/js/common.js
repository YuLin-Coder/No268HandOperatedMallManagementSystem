$(function () {
//==========导航
    var that,datacid;
    $(".nav ul li").hover(function () {
        that = $(this),
            dcid = $(this).attr("data-cid");
        that.addClass("on").siblings("li").removeClass("on");
    },function () {
        $(".nav ul li").each(function(i, v) {
            datacid = $(this).attr("data-cid");
            if(datacid == CATID && datacid != undefined || BCID == datacid){
                $(this).addClass("on");
                return false;
            }
        });
        if(dcid != BCID){
            $(this).removeClass("on");
        }
    });
//==========团队[Team-a]
    $(".click-more-team").on("click",function () {
        var pars = $(this).parents("li");
        $(".dask-team-ceng").removeClass("hide");
        pars.find(".dask-team").removeClass("hide");
    });
    $(".team-colse").on("click",function () {
        var pars = $(this).parents(".dask-team");
        $(".dask-team-ceng").addClass("hide");
        pars.addClass("hide");
    });
    //放大
    $("a[rel=example_table_"+BCID+"]").fancybox();
//=========搜索
    $(".click-search").on("click",function () {
        var keywords = $.trim($(".keywords").val());
        if (keywords=='') {return false;}
    });
//=========返回顶部
    $("#get_top").on("click",function () {
        $("body,html").animate({
            scrollTop : 0
        }, 1000);
    });
    $(".go-bottom").on("click",function () {
       $("body,html").animate({
           scrollTop: $('.plate').offset().top
       },700)
    });
//强制100%
    $(".box-content .con-right").css('min-height',$(window).height() - 135 - $(".footer").outerHeight());
    $(".detail iframe,.detail table").css("width","100%");
//禁止右键
    if (ONCONTEXT) {
        document.oncontextmenu = function (event){
            if(window.event){
                event = window.event;
            }try{
                var the = event.srcElement;
                if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
                    return false;
                }
                return true;
            }catch (e){
                return false;
            }
        }
    }
//屏蔽复制
    if (ONCOPY) {
        document.oncopy = function (event){
            if(window.event){
                event = window.event;
            }try{
                var the = event.srcElement;
                if(!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
                    return false;
                }
                return true;
            }catch (e){
                return false;
            }
        }
    }
//屏蔽选中
    if (ONSELECT) {
        document.onselectstart = function (event){
            if(window.event){
                event = window.event;
            }try{
                var the = event.srcElement;
                if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
                    return false;
                }
                return true;
            } catch (e) {
                return false;
            }
        }
    }


});