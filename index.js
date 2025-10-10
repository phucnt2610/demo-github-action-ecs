import express from "express";

const app = express();
const port = process.env.PORT || 4000;

app.get('/', (req, res) => {
    res.send(`
        <h1>Production Env</h1>
        <h2>Hello world !!!</h2>
        <h2>I am a demo service.</h2>
        `);
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))