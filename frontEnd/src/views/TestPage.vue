<template>
  <div>
    <h2>九型人格测试</h2>
    <ul>
      <li v-for="item in items" :key="item.id">
        {{ item.id }} {{ item.describe }}
        <div>
          <label>
            <input type="radio" :value="item.type" v-model="item.flag" @change="updateCount(item)"> 是
          </label>
          <label>
            <input type="radio" value="0" v-model="item.flag" @change="updateCount(item)"> 否
          </label>
        </div>
      </li>
    </ul>
    <button @click="goToUrl('/result')">跳转至结果页</button>
  </div>
  <div class="popup" v-if="show">
      <div class="popup-content">
        <h3>提示</h3>
        <p>请完成全部测试题后提交！</p>
        <button @click="closePopup">关闭</button>
      </div>
    </div>
</template>

<style>
.popup {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
}

.popup-content {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
}

button {
  margin-top: 10px;
}
</style>

<script>
import { reactive, ref } from 'vue';

export default {
  data() {
    return {
      show: false,
      message: "",
      items: []
    };
  },
  mounted() {
    fetch("http://127.0.0.1:8000/psychological_test/nine_personality_test", {
      method: 'GET',
    })
      .then(response => response.json())
      .then(data => {
        this.message = data.message;
        this.items = data.data;
      })
      .catch(error => console.error(error));
  },
  methods: {
    goToUrl(url) {
      console.log("idFlag: ", Object.keys(this.idFlag)['length'])
      if (Object.keys(this.idFlag)['length'] == 108) {
        localStorage.setItem('data', JSON.stringify(this.personalityCount));
        window.location.href = url;
      } else {
        this.show = true
      }
      // localStorage.setItem('data', JSON.stringify(this.personalityCount));
      // window.location.href = url;
    },
    closePopup() {
      this.show = false;
    },
    updateCount(item) {
      const personalityCount = this.personalityCount;
      const idFlag = this.idFlag;

      const currentType = item.type.toString(); // 将类型转换为字符串作为键
      const idNum = item.id.toString();

      // 如果类型不存在于 personalityCount 中，则初始化计数为 0
      if (!personalityCount[currentType]) {
        personalityCount[currentType] = 0;
      }

      if (idFlag[idNum]) {
        if (idFlag[idNum] != "0") {
          personalityCount[currentType] -= 1;
        }
      }

      idFlag[idNum] = item.flag;

      // 获取当前选中的类型并增加计数
      if (item.flag != "0") {
        personalityCount[currentType] += 1;
      }

      // console.log('idFlag:', idFlag);
      // console.log('personalityCount:', personalityCount);
    }
  },
  setup() {
    const personalityCount = reactive({});
    const idFlag = reactive({});

    return {
      personalityCount,
      idFlag,
    };
  },
};
</script>
