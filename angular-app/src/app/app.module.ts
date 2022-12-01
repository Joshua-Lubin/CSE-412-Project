import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { RestaurantComponent } from './restaurant/restaurant.component';
import { CategoriesComponent } from './categories/categories.component';
import { ListRestaurantsComponent } from './list-restaurants/list-restaurants.component';

@NgModule({
  declarations: [
    AppComponent,
    RestaurantComponent,
    CategoriesComponent,
    ListRestaurantsComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
