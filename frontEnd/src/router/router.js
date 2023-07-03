import { createRouter, createWebHistory } from 'vue-router'

import Home from '../views/Home.vue'
import ResultsPage from '../views/ResultsPage.vue'
import TestPage from '../views/TestPage.vue'

const routes = [
  {
    path: '/',
    name: '首页',
    component: Home
  },
  {
    path: '/Result',
    name: '结果页',
    component: ResultsPage
  },
  {
    path: '/Test',
    name: '测试页',
    component: TestPage
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
