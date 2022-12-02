var express = require('express');
var router = express.Router();

router.post('/', async function (req, res, next) {
    const { Client } = require('pg');
    const client = new Client({
        host: "localhost",
        password: "password",
        user: "postgres",
        database: "postgres",
        port: 5433,
    });
    await client.connect();

    let queryString = 'SELECT DISTINCT "Restaurant".* FROM public."Restaurant", public."RestaurantToCategory"'    
    let parameters = [];

    if(req.body.search !== undefined) {
        queryString += ' WHERE "Restaurant"."restaurantName" LIKE $1::text'
        parameters.push("%" + req.body.search + "%");
        if(req.body.category !== undefined) {
            queryString += ' AND "categoryName"=$2::text AND "Restaurant"."restaurantName"="RestaurantToCategory"."restaurantName"';
            parameters.push(req.body.category);
        }
    }
    else {
        if(req.body.category !== undefined) {
            queryString += ' WHERE "categoryName"=$1::text AND "Restaurant"."restaurantName"="RestaurantToCategory"."restaurantName"';
            parameters.push(req.body.category);
        }
    }

    if (req.body.sortByRating === true) {
        queryString += ' ORDER BY "rating" DESC';
    }

    queryString += ';';

    const query = await client.query(queryString, parameters);
    for(let i = 0; i < query.rows.length; i++) {
        query.rows[i] = {
            ...query.rows[i],
            categories: 
                (await client.query('SELECT "Category".* FROM public."RestaurantToCategory", public."Category" WHERE "restaurantName"=$1::text AND "Category"."categoryName"="RestaurantToCategory"."categoryName";', [query.rows[i].restaurantName]))
                    .rows
        }
    }
    res.send(query.rows);
    await client.end();
});

module.exports = router;
