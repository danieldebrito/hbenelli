import { Component, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';
import { ArticulosService } from 'src/app/services/articulos.service';

@Component({
  selector: 'app-catalog-main',
  templateUrl: './catalog-main.component.html',
  styleUrls: ['./catalog-main.component.scss']
})
export class CatalogMainComponent implements OnInit {

  articulos: Articulo[] = [];


  constructor(
    private articulosSv: ArticulosService,
  ) { }

  public getArticulos() {
    this.articulosSv.getAll().subscribe(data => {

      this.articulos = data;
    });
  }



  ngOnInit(): void {
    this.getArticulos();
  }
}
