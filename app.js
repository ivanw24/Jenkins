const express = require('express');
const app = express();
app.get('/', (req, res) => {
res.send('Hello, CI/CD with Jenkins and Docker!');
});
app.get('/status', (req, res) => {
res.json({ status: 'Running', uptime: process.uptime() });
});
const PORT = 3000;
app.listen(PORT, () => {
console.log(`Server running on http://localhost:${PORT}`);
});