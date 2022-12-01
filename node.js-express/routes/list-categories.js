var express = require('express');
var router = express.Router();

router.post('/', async function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");

    const { Client } = require('pg');
    const client = new Client({
        host: "localhost",
        password: "password",
        user: "postgres",
        database: "postgres",
        port: 5433,
    });
    await client.connect();

    const query = await client.query('SELECT * FROM public."Category";')
    res.send(query.rows);
    await client.end();
});

module.exports = router;
