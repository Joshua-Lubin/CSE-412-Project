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

    if (req.body.category !== undefined) {
        const query = await client.query('SELECT "Restaurant".* FROM public."RestaurantToCategory", public."Restaurant" WHERE "categoryName"=$1::text AND "Restaurant"."restaurantName"="RestaurantToCategory"."restaurantName";', [req.body.category])
        res.send(query.rows);
        await client.end();
        return;
    }

    if (req.body.sortByRating === true) {
        const query = await client.query('SELECT * FROM public."Restaurant" ORDER BY "rating" DESC;')
        res.send(query.rows);
        await client.end();
        return;
    }

    if(req.body.search !== undefined) {
        const query = await client.query('SELECT * FROM public."Restaurant" WHERE "restaurantName" LIKE $1::text', ["%" + req.body.search + "%"])
        res.send(query.rows);
        await client.end();
        return;
    }

    const query = await client.query('SELECT * FROM public."Restaurant";')
    res.send(query.rows);
    await client.end();
});

module.exports = router;
