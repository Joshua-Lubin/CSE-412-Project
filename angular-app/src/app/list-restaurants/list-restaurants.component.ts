import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-list-restaurants',
  templateUrl: './list-restaurants.component.html',
  styleUrls: ['./list-restaurants.component.css']
})
export class ListRestaurantsComponent implements OnInit {

  http: HttpClient;

  constructor(http: HttpClient) {
    this.http = http;
  }

  async ngOnInit(): Promise<void> {
    console.log(
      await this.http.post("http://localhost:3000/api/list-restaurants", {}).subscribe()
    );
  }

}
