import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Restaurant } from '../list-restaurants/list-restaurants.component';
import { Category } from '../categories/categories.component';

interface Review {
  text: string;
  reviewer: string;
  reviewId: string;
}

interface MenuItem {
  menuItemName: string;
  menuItemDescription: string;
  menuItemId: string;
  price: number;
}

interface MenuSection {
  menuSectionName: string;
  menuSectionDescription: string | null;
  menuSectionId: string;
  items: MenuItem[];
}

interface Menu {
  menuId: string;
  menuName: string;
  sections: MenuSection[];
}

interface RestaurantData {
  restaurant: Restaurant;
  menu: Menu;
  reviews: Review[];
  categories: Category[];
}

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  constructor(private http: HttpClient, private route: ActivatedRoute) { }

  restaurantData?: RestaurantData;

  ngOnInit(): void {
    this.route.queryParams
      .subscribe(params => {
        this.http.post<RestaurantData>("http://localhost:3000/api/get-restaurant", { restaurantName: params['restaurantName'] })
          .subscribe((data) => { this.restaurantData = data });
      });
  }

}
