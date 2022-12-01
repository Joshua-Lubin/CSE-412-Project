import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  http: HttpClient;

  constructor(http: HttpClient) {
    this.http = http;
  }

  async ngOnInit(): Promise<void> {
    console.log(
      this.http.post("http://localhost:3000/api/list-restaurants", {})
    );
  }

}
