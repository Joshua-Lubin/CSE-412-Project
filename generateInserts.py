import json
import uuid

f=open('./data.txt', encoding='utf8')
data = json.load(f)

#-----------------------------
# Restaurant
#-----------------------------

#Restaurant.restaurantName
restaurantName = data['data']['title'].replace("'", "''").replace("’", "''")

#Restaurant.address
address = data['data']['location']['address'].replace("'", "''").replace("’", "''")

#Restaurant.phoneNumber
phoneNumber = data['data']['phoneNumber'].replace("'", "''").replace("’", "''")

#Restaurant.rating
rating = data['data']['rating']['ratingValue']

print("INSERT INTO public.\"Restaurant\" (\"restaurantName\", \"address\", \"phoneNumber\", \"rating\") VALUES ('{0}', '{1}', '{2}', '{3}');".format(restaurantName, address, phoneNumber, rating))

#-----------------------------
# Category
#-----------------------------
for category in data['data']['categoryLinks']:
    if 'link' in category:
        print("INSERT INTO public.\"Category\" (\"categoryName\", \"link\") VALUES ('{0}', '{1}');".format(category['text'], category['link']))
    else:
        print("INSERT INTO public.\"Category\" (\"categoryName\") VALUES ('{0}');".format(category['text']))
    print("INSERT INTO public.\"RestaurantToCategory\" (\"categoryName\", \"restaurantName\") VALUES ('{0}', '{1}');".format(category['text'], restaurantName))

#-----------------------------
# Rating
#-----------------------------
for rating in data['data']['storeReviews']:
    reviewId = uuid.uuid4()
    print("INSERT INTO public.\"Review\" (\"text\", \"reviewer\", \"reviewId\") VALUES ('{0}', '{1}', '{2}');".format(rating['reviewText']['text'].replace("'", "''").replace("’", "''"), rating['eaterName']['text'].replace("'", "''").replace("’", "''"), reviewId))
    print("INSERT INTO public.\"RestaurantToReview\" (\"restaurantName\", \"reviewId\") VALUES ('{0}', '{1}');".format(restaurantName, reviewId))

#-----------------------------
# Menu
#-----------------------------
for menuId in data['data']['catalogSectionsMap']:
    menu = data['data']['catalogSectionsMap'][menuId]
    print("INSERT INTO public.\"Menu\" (\"menuId\", \"menuName\") VALUES ('{0}', '{1}');".format(menuId, "Main Menu"))
    print("INSERT INTO public.\"RestaurantToMenu\" (\"restaurantName\", \"menuId\") VALUES ('{0}', '{1}');".format(restaurantName, menuId))
    #-----------------------------
    # MenuSection
    #-----------------------------
    for menuSection in menu:
        menuSectionId = menuSection['catalogSectionUUID']
        menuSection = menuSection['payload']['standardItemsPayload']
        menuSectionName = menuSection['title']['text'].replace("'", "''").replace("’", "''")

        if 'subtitle' in menuSection:
            menuSectionDescription = menuSection['subtitle']['text'].replace("'", "''").replace("’", "''")
            print("INSERT INTO public.\"MenuSection\" (\"menuSectionName\", \"menuSectionDescription\", \"menuSectionId\") VALUES ('{0}', '{1}', '{2}');".format(menuSectionName, menuSectionDescription, menuSectionId))
        else:
            print("INSERT INTO public.\"MenuSection\" (\"menuSectionName\", \"menuSectionId\") VALUES ('{0}', '{1}');".format(menuSectionName, menuSectionId))
        print("INSERT INTO public.\"MenuToMenuSection\" (\"menuId\", \"menuSectionId\") VALUES ('{0}', '{1}');".format(menuId, menuSectionId))

        #-----------------------------
        # MenuItem
        #-----------------------------
        for menuItem in menuSection['catalogItems']:
            menuItemId = menuItem['uuid']
            menuItemName = menuItem['title'].replace("'", "''").replace("’", "''")
            try:
                menuItemDescription = menuItem['itemDescription'].replace("'", "''").replace("’", "''")
            except:
                menuItemDescription = ""
            price = menuItem['price'] / 100.0
            print("INSERT INTO public.\"MenuItem\" (\"menuItemName\", \"menuItemDescription\", \"price\", \"menuItemId\") VALUES ('{0}', '{1}', '{2}', '{3}');".format(menuItemName, menuItemDescription, price, menuItemId))
            print("INSERT INTO public.\"MenuSectionToMenuItem\" (\"menuItemId\", \"menuSectionId\") VALUES ('{0}', '{1}');".format(menuItemId, menuSectionId))