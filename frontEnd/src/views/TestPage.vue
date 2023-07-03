<!--
<template>
  <div>
    <label>
      <input type="radio" value="option1" v-model="selectedOption"> 是
    </label>
    <label>
      <input type="radio" value="option2" v-model="selectedOption"> 否
    </label>
    <p>Selected option: {{ selectedOption }}</p>
  </div>
</template>

<script>
import { ref } from 'vue'

export default {
  setup() {
    const selectedOption = ref('option1')

    return {
      selectedOption
    }
  }
}
</script>
-->

<!--
<template>
  <div>
    <ul>
      <li v-for="user in userList" :key="user.id">{{ user.id}}: {{ user.description}} - {{ user.type}}</li>
    <label>
      <input type="radio" value="option1" v-model="selectedOption"> 是
    </label>
    <label>
      <input type="radio" value="option2" v-model="selectedOption"> 否
    </label>
    <p>Selected option: {{ selectedOption }}</p>
    </ul>
  </div>
</template>

<script>
import Fetch from '../config/fetch'

export default {
  data() {
    return {
      userList: []
    }
  },
  created() {
    Fetch({
      method: 'get',
      url: 'http://127.0.0.1:8080/personality',
      data:{
        'type':1
      }
    }).then(res => {

      this.userList = res.data
    })
  }

  
}


</script>
-->

<!-- 页面 -->
<template>
  <div>
    <h2>九型人格测试</h2>
    <ul>
      <li v-for="item in items" :key="item.id">
        {{ item.id }} {{ item.describe }}
        <div>
          <label>
            <!-- <input type="radio" :value="item.type" v-model="item.flag" @change="updateCount(item)"> 是 -->
            <input type="radio" :value=1 v-model="item.flag" @change="updateCount(item)"> 是
          </label>
          <label>
            <input type="radio" value="0" v-model="item.flag" @change="updateCount(item)"> 否
          </label>
        </div>
      </li>
    </ul>
    <button @click="goToUrl('/result')">跳转至结果页</button>
  </div>
</template>

<script>
import { ref, reactive } from 'vue';

export default {
  data() {
    return {
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
      window.location.href = url;
    },
    updateCount(item) {
      const idCount = this.idCount;
      const personalityCount = this.personalityCount;
      const idList = this.idList;
      
      console.log('testItem', item)
      if (idList.indexOf(item.id) != -1) {
        console.log('testList', idList)
        switch (item.type) {
          case 1:
            personalityCount.PerfectType -= 1;
            break;
          case 2:
            personalityCount.GivenType -= 1;
            break;
          case 3:
            personalityCount.AchievementType -= 1;
            break;
          case 4:
            personalityCount.RomanticType -= 1;
            break;
          case 5:
            personalityCount.ObserveType -= 1;
            break;
          case 6:
            personalityCount.DoubtType -= 1;
            break;
          case 7:
            personalityCount.PleasureType -= 1;
            break;
          case 8:
            personalityCount.LeadershipType -= 1;
            break;
          case 9:
            personalityCount.MediatingType -= 1;
            break;
        } 
      } else {
        idList[idCount] = item.id;
        idCount += 1;
        console.log('testList', idList);
        console.log('testIdCount', idCount);
      }

      // 获取当前选中的类型并增加计数
      if (item.flag == 1) {
        switch (item.type) {
          case 1:
            personalityCount.PerfectType += 1;
            break;
          case 2:
            personalityCount.GivenType += 1;
            break;
          case 3:
            personalityCount.AchievementType += 1;
            break;
          case 4:
            personalityCount.RomanticType += 1;
            break;
          case 5:
            personalityCount.ObserveType += 1;
            break;
          case 6:
            personalityCount.DoubtType += 1;
            break;
          case 7:
            personalityCount.PleasureType += 1;
            break;
          case 8:
            personalityCount.LeadershipType += 1;
            break;
          case 9:
            personalityCount.MediatingType += 1;
            break;
        }
      }
      console.log('personalityCount:', this.personalityCount);
    }
  },
  setup() {
    let personalityCount = reactive({
      PerfectType: 0,
      GivenType: 0,
      AchievementType: 0,
      RomanticType: 0,
      ObserveType: 0,
      DoubtType: 0,
      PleasureType: 0,
      LeadershipType: 0,
      MediatingType: 0,
    });
    
    let idCount = ref(0);
    let idList = ref([]);

    return {
      idList,
      idCount,
      personalityCount,
    };
  },
};
</script>




<!-- <template>
  <div>
    <div v-for="item in list" :key="item.id">
      <input type="radio" :id="item.id" :value="item.value" v-model="selectedItem" />
      <label :for="item.id">{{ item.label }}</label>
    </div>

    <p>选中的选项是: {{ selectedItem }}</p>
  </div>
</template>

<script>
import { ref } from 'vue';

export default {
  setup() {
    const list = [
      { id: 1, label: '是', value: 1 },
      { id: 2, label: '否', value: 0 },
    ];

    const selectedItem = ref('');

    return {
      list,
      selectedItem,
    };
  },
};
</script> -->
