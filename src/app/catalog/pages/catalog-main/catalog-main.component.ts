import { Component, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';
import { Categoria } from 'src/app/class/categoria';
import { ArticulosService } from 'src/app/services/articulos.service';
import { CategoriasService } from 'src/app/services/categorias.service';

@Component({
  selector: 'app-catalog-main',
  templateUrl: './catalog-main.component.html',
  styleUrls: ['./catalog-main.component.scss']
})
export class CatalogMainComponent implements OnInit {

  public articulos: Articulo[] = [];
  public categorias: Categoria[] = [];



  constructor(
    private articulosSv: ArticulosService,
    private categoriasSv: CategoriasService,
  ) { }

  public getArticulos() {
    this.articulosSv.getAll().subscribe(data => {
      this.articulos = data;
    });
  }

  public getCategorias() {
    this.categoriasSv.getAll().subscribe(data => {
      this.categorias = data;

      console.table(this.categorias);
    });
  }


  ngOnInit(): void {
    this.getArticulos();
    this.getCategorias();
  }
}
