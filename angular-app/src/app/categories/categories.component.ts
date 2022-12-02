import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

export interface Category {
  categoryName: string;
  link: string;
}

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.css']
})
export class CategoriesComponent implements OnInit {

  categories?: Category[];

  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    this.http.post<Category[]>("http://localhost:3000/api/list-categories", {})
      .subscribe((data) => { this.categories = data; });
  }

}
