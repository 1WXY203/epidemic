项目描述：1.接口的管理以及接口数据的预加载
          2.echarts全国地图提示框的渲染以及分段型视觉映射组件的渲染
          3.swiper轮播图按钮和滑动slide之间的相互切换
          4.rem+百分比布局
          5.express模块get接口的创建以及调用xampp中MySQL省疫情数据
使用数据库：qing.sql文件是该项目的导出的数据库，该数据库是xampp软件集成包上的，如果要正常使用此数据库，需要在xampp上导入 
后台需要配置一些信息，基本配置信息如下： var mysql=require('mysql'); var client=mysql.createConnection({ host:'localhost', user:'root', //!--你的账号名称--// password:'', database:'qing' //数据库名称 }) //var sql="select * from data"; data:查询数据库的表名称
