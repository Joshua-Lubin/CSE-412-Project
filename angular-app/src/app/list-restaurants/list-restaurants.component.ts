import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Category } from '../categories/categories.component';

export interface Restaurant {
  address: string;
  phoneNumber: string;
  rating: number;
  restaurantName: string;
  categories: Category[];
}

@Component({
  selector: 'app-list-restaurants',
  templateUrl: './list-restaurants.component.html',
  styleUrls: ['./list-restaurants.component.css']
})
export class ListRestaurantsComponent implements OnInit {

  restaurants?: Restaurant[];
  search?: string;
  params?: any;

  constructor(private http: HttpClient, private route: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    this.route.queryParams
      .subscribe(params => {
        this.params = params;
        this.http.post<Restaurant[]>("http://localhost:3000/api/list-restaurants", { category: params['category'], search: params['search'], sortByRating: params['sortByRating']  === "true" })
          .subscribe((data) => { this.restaurants = data });
      });
  }

  sortClick(): void {
    console.log("test");
    this.router.navigate(["/"], {
      queryParams: {
        ...this.params,
        sortByRating: "true"
      }
    });
  }

  searchClick(): void {
    this.router.navigate(["/"], {
      queryParams: {
        ...this.params,
        search: this.search
      }
    });
    this.search = undefined;
  }

  clearFilters(): void {
    this.router.navigate(["/"]);
    this.search = undefined;
  }

}
