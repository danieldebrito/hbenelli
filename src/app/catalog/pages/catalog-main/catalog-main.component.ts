import { Component, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';
import { Categoria } from 'src/app/class/categoria';
import { ArticulosService } from 'src/app/services/articulos.service';
import { CategoriasService } from 'src/app/services/categorias.service';
import { Busqueda } from 'src/app/class/busqueda';


@Component({
  selector: 'app-catalog-main',
  templateUrl: './catalog-main.component.html',
  styleUrls: ['./catalog-main.component.scss']
})
export class CatalogMainComponent implements OnInit {

  public articulos: Articulo[] = [];
  public filterArticulos: Articulo[] = [];

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
      this.filterArticulos = data;

      // console.table(this.categorias);
    });
  }

  filtrar(event: Busqueda) {

    console.table(event.idCategoria?.toString())

    let filteredArticulos = [...this.articulos]; // resetear el filtrado cada vez que se hace una nueva búsqueda
    filteredArticulos = event.rubro !== '' ? filteredArticulos.filter(a => a.subcategoria === event.rubro) : filteredArticulos;

    filteredArticulos = event.idCategoria !== '' ? filteredArticulos.filter(r => r.idCategoria == event.idCategoria?.toString()) : filteredArticulos;
    this.filterArticulos = filteredArticulos;
  }



  ngOnInit(): void {
    this.getArticulos();
    this.getCategorias();
  }
}
