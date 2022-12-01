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

    if(req.body.restaurantName === undefined) {
        return;
    }

    const reviewsQuery = await client.query('SELECT "Review".* FROM public."RestaurantToReview", public."Review" WHERE "restaurantName"=$1::text AND "RestaurantToReview"."reviewId"="Review"."reviewId";', [req.body.restaurantName]);

    const restaurantQuery = await client.query('SELECT * FROM public."Restaurant" WHERE "restaurantName"=$1::text;', [req.body.restaurantName]);
    const restaurantMenuQuery = await client.query('SELECT "Menu".* FROM public."RestaurantToMenu", public."Menu" WHERE "restaurantName"=$1::text AND "RestaurantToMenu"."menuId"="Menu"."menuId";', [req.body.restaurantName]);
    const restaurantMenuSectionQuery = await client.query('SELECT "MenuSection".* FROM public."MenuToMenuSection", public."MenuSection" WHERE "menuId"=$1::text AND "MenuToMenuSection"."menuSectionId"="MenuSection"."menuSectionId";', [restaurantMenuQuery.rows[0].menuId]);

    let menu = {...restaurantMenuQuery.rows[0], sections: []};
    for(let i = 0; i < restaurantMenuSectionQuery.rows.length; i++) {
        menu.sections.push({
            ...restaurantMenuSectionQuery.rows[i],
            items: (await client.query('SELECT "MenuItem".* FROM public."MenuSectionToMenuItem", public."MenuItem" WHERE "menuSectionId"=$1::text AND "MenuSectionToMenuItem"."menuItemId"="MenuItem"."menuItemId";', [restaurantMenuSectionQuery.rows[i].menuSectionId])).rows
        })
    }

    res.send({
        restaurant: restaurantQuery.rows[0],
        menu: menu,
        reviews: reviewsQuery.rows
    });
    await client.end();
});

module.exports = router;
