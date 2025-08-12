import axios from 'axios';

// const api = axios.create({
//   baseURL: 'http://localhost:3000/api', // your backend API
//   headers: { 'Content-Type': 'application/json' }
// });
const api = axios.create({
  baseURL: 'http://localhost:3000'
});

export default api;
