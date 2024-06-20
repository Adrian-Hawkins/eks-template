const express = require('express');

const app = express();
const port = 3000;

app.get('/get/:id', (req, res) => {
    const userId = req.params.id;
    res.send(`Hello ${userId}`);
});
app.get('/other/user/:id', (req, res) => {
    const userId = req.params.id;
    res.send(`Hello ${userId}`);
});

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
