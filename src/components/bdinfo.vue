<template>
  <div class="info">
    <p class="title">
      <i></i>
      病毒信息
    </p>
    <div class="content">
      <p class="one-txt-cut">易感人群:人群普遍易感。新型冠状病毒感染的肺炎在免疫功能低下和免疫功能正常人群均可发生，与接触病毒的量有一定关系。对于免疫功能较差的人群，例如老年人、孕产妇或存在肝肾功能异常，有慢性病人群，感染后病情更重</p>
      <p class="one-txt-cut">潜伏期：2月9日，由国家卫健委高级别专家组组长、中国工程院院士钟南山领衔的《中国2019年新型冠状病毒感染的临床特征》研究论文在预印本网站medRxiv上发表。论文称，新冠肺炎的中位潜伏期为3.0天，最长可达24天</p>
      <p class="one-txt-cut">宿主:野生动物，可能是中华菊头蝠</p>
      <p class="one-txt-cut">病毒:简称“新冠肺炎”，世界卫生组织命名为“2019冠状病毒病” [1-2]  ，是指2019新型冠状病毒感染导致的肺炎</p>
      <p class="one-txt-cut">传染源:传染源主要为新型冠状病毒感染的患者或无症状感染者，人群普遍易感</p>
      <p class="one-txt-cut">传播突进:新型冠状病毒经呼吸道飞沫和密切接触传播，接触病毒污染的物品也可能会造成感染</p>
    </div>
  </div>
</template>

<script>
// import index1 from '../api/index1';
export default {
  data() {
    return{}
  },
  mounted() {},
  props: {
    info: {
      type: Object,
      required: true,
      default: function () {
        return {};
      },
    },
  },
};
</script>

<style lang='less' scoped >
.info {
  padding: 0 0.16rem;
  background: #fff;
  border-bottom: 1px solid #f1f1f1;
  .title {
    margin: 10px 0;
    font-size: 1rem;
    i {
      display: inline-block;
      width: 0.5rem;
      height: 1.5rem;
      margin-right: 0.03rem;
      background: #4169e2;
      vertical-align: middle;
    }
  }
  .content {
    padding: 0.06rem 0.16rem;
    p {
      font-size: 13px;
      width: 100%;
      margin: 5px 0; 
      

    }
  }
  .one-txt-cut{
    display: block;
    height: 1rem;
    width: 100%;
    line-height: 100%;
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
  }
}
</style>