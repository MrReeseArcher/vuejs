<script>
  import axios from 'axios';

  export default {
    data() {
      return {
        users: ''
      }
    },

    methods: {
      async getUsers() {
        // let users = await axios.get('http://localhost/api/users');
        let users = await axios.get(import.meta.env.VITE_API_DOMAIN + '/api/users');
        console.log('users', users);
        this.users = users;
      }
    },

    mounted() {
      this.getUsers()
    }
  }
</script>

<template>
  <main>
    <h1>Test</h1>
<!--    <div>{{ users }}</div>-->

    <ul id="example">
      <li v-for="item in users.data">
        {{ item }}
      </li>
    </ul>
  </main>
</template>
