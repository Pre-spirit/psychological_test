<template>
    <div>
      <h2>结果页</h2>
      <p>This is the result page.</p>
      <h2> {{ data }}</h2>
    </div>
</template>

<script>
export default {
  data() {
    return {
      data: [],
      message: '',
      // personalityCount: []
    };
  },
  mounted() {
    const personalityCount = JSON.parse(localStorage.getItem('data'));
    localStorage.removeItem('data');

    console.log('test: ', personalityCount);
      fetch('http://127.0.0.1:8000/psychological_test/nine_personality_result', {
        method:'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({data: personalityCount})
      })
        .then(response => response.json())
        .then(data => {
          this.data = data.data,
          this.message = data.message
        })
        .catch(error => {
          console.error(error);
        })
  },
  methods: {
  },
};
</script>