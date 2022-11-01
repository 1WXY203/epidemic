<template>
  <div>
    <div id="container"></div>
  </div>
</template>

<script>
import echarts from "echarts";
import "../../node_modules/echarts/map/js/china.js";
import axios from "axios";
export default {
  data() {
    return {
      
    }
  },
  mounted() {
    
    // axios.get('',(req,res)=>{
    //   console.log(res,'jljlkj')
    // }) 
    // console.log('jsdklfjk')
    axios.get('http://localhost:8080/yiqing/')
    .then(function (response) {
      // 处理成功情况
      console.log(response);
      
      

    // 请求省市数据
      let dataArr = [];
      for(let i =0 ;i<response.data.length; i++){
          let t = response.data[i]
          dataArr.push({ 
              name:t.urlname.trim(),
              value:t.number.trim(),
              itemStyle:{
                  areaColor:(function(){
                      let num = t.currentConfirmedCount;
                      if(num ==0){
                          return '#fff'
                      }else if(num>0 && num<10){
                          return '#fdfdcf'
                      }else if(num>=10&&num<20){
                          return '#fe9e83'
                      }else if(num>=20&&num<30){
                          return '#e55a4e'
                      }else{
                          return '#4f070d'
                      }
                  })()
              }
          })
      }
      console.log(dataArr)
      var myChart = echarts.init(document.getElementById("container"));
      var option = {
        tooltip: {
          show: true,
          formatter: function(params) {
            console.log(params);
            return (
              "<div><p>省：" +
              params.name +
              "</p><p>现存确诊：" +
              params.value +
              "</p></div>"
            );
          }
        },
        visualMap:{
            type:'piecewise',
            pieces:[{
                min:1,
                max:10
            },{
                min:10,
                max:20
            },{
                min:20,
                max:30
            },{
                min:30,
                max:40
            }]
        },
        series: [
          {
            name: "省",
            type: "map",
            map: "china",
            roam: false,
            zoom: 1.2,
            aspectScale: 0.75,
            label: {
              normal: {
                show: true,
                textStyle: {
                  color: "rgba(0,0,0,1)",
                  fontSize: "10px"
                }
              }
            },
            itemStyle: {
              normal: {
                areaColor: "rgba(0,255,236,0)",
                borderColor: "rgba(0,0,0,0.2)"
              },
              emphasis: {
                areaColor: "rgba(255,180,0,0.8)",
                shadowOffsetX: 0,
                shadowOffsetY: 0,
                shadowBlur: 20,
                borderWidth: 0,
                shadowColor: "rgba(0, 0, 0, 0.5)"
              }
            },
            data:dataArr
          }
        ]
      };
      myChart.setOption(option, true);
    })
    .catch(function (error) {
      // 处理错误情况
      console.log(error);
    })
    
  }
};
</script>

<style>
#container {
  width: 100%;
  min-height: 15rem;
}
</style>