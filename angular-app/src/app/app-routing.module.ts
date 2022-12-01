import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CategoriesComponent } from './categories/categories.component';
import { ListRestaurantsComponent } from './list-restaurants/list-restaurants.component';
import { RestaurantComponent } from './restaurant/restaurant.component';

const routes: Routes = [
  {
    path: "",
    component: ListRestaurantsComponent
  },
  {
    path: "restaurant",
    component: RestaurantComponent
  },
  {
    path: "categories",
    component: CategoriesComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
