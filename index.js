const express = require('express');
const app = express();
const PORT = 80;

app.get('/', (req, res) => {
  res.send('Hello, World! This is your Dockerized Node.js application.');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

