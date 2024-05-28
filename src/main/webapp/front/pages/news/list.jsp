<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
  <meta charset="UTF-8">
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>新闻资讯列表</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/iconfont.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/color.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/global.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/page.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/uzlist.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/animate.min.css">
  <link rel="stylesheet" type="text/css" href="../../xznstatic/css/fancybox.css" />
  <script type="text/javascript" src="../../xznstatic/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/superslide.2.1.1.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/wow.min.js"></script>
  <script type="text/javascript" src="../../xznstatic/js/fancybox.js"></script>
  <script type="text/javascript">
    var CATID = "0",
      BCID = "0",
      NAVCHILDER = "",
      ONCONTEXT = 0,
      ONCOPY = 0,
      ONSELECT = 0;
  </script>
  <script type="text/javascript" src="../../xznstatic/js/common.js"></script>
</head>

<body>
  <div id="app">
    <div class="layui-carousel" id="swiper">
      <div carousel-item id="swiper-item">
        <div v-for="(item,index) in swiperList" v-bind:key="index">
          <img class="swiper-item" :src="item.img" width="100%" height="400px">
        </div>
      </div>
    </div>
    
    <div class="back-white">
      <div class="container box-content">
        <div class="con-left">
          <div class="subcat">
            <div class="sub-tit">
              <h3><em>新闻资讯</em></h3>
            </div>
          </div>
        </div>
        <div class="article-list">
          <ul class="after">
            <li v-for="(item,index) in dataList" v-bind:key="index">
              <a target="_self" :href="'../news/detail.jsp?id='+item.id">
                <img width="180" class="fl" :src="item.picture" />
                <h5>{{item.title}}</h5>
                <p class="time-sour">
                  <span>发布时间：{{item.addtime}} </span>
                </p>
                <p class="reamk">{{item.content|newsDesc}}...</p>
              </a>
            </li>
          </ul>
          <div class="pages">
            <div class="pager" id="pager"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="footer footer-a back-black" style='background:#F67280;'>
      <div class="container">
        <div class="footer-text center">
          <div class="links">
            <span v-text="projectName"></span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>

  <script>
    var vue = new Vue({
      el: '#app',
      data: {
        projectName: projectName,
        swiperList: [{
          img: '../../img/banner.jpg'
        }],
        dataList: []
      },
      filters: {
        newsDesc: function(val) {
          if (val) {
            val = val.replace(/<[^<>]+>/g, '').replace(/undefined/g, '');
            if (val.length > 60) {
              val = val.substring(0, 60);
            }

            return val;
          }
          return '';
        }
      },
      methods: {
        jump(url) {
          jump(url)
        }
      }
    })

    layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var carousel = layui.carousel;
      var laypage = layui.laypage;
      var http = layui.http;
      var jquery = layui.jquery;

      http.request('config/list', 'get', {
        page: 1,
        limit: 5
      }, function(res) {
        if (res.data.list.length > 0) {
          var swiperItemHtml = '';
          for (let item of res.data.list) {
            if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
              swiperItemHtml +=
                '<div>' +
                '<img class="swiper-item" src="' + item.value + '" width="100%" height="400px">' +
                '</div>';
            }
          }
          jquery('#swiper-item').html(swiperItemHtml);
          // 轮播图
          carousel.render({
            elem: '#swiper',
            width: '100%',
            height: '400px',
            arrow: 'always',
            anim: 'fade',
            interval: 1800,
            indicator: 'inside'
          });
        }
      });

      // 获取列表数据
      http.request('news/list', 'get', {
        page: 1,
        limit: 5
      }, function(res) {
        vue.dataList = res.data.list
        // 分页
        laypage.render({
          elem: 'pager',
          count: res.data.total,
          limit: 5,
          jump: function(obj, first) {
            //首次不执行
            if (!first) {
              http.request('news/list', 'get', {
                page: obj.curr,
                limit: obj.limit
              }, function(res) {
                vue.dataList = res.data.list;
              })
            }
          }
        });
      })
    });
  </script>
</body>

</html>