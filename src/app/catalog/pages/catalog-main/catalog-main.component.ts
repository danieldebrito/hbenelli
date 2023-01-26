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

      // console.table(this.categorias);
    });
  }

  public filtrar(event: Busqueda) {

    console.log(event);

    
    event.rubro !== '' ? this.articulos = this.articulos.filter(r => r.subcategoria === event.rubro) : this.articulos; // = this.articulos.map(r => r.subcategoria);
    event.subrubro !== null ? this.articulos = this.articulos.filter(r => r.idCategoria === event.subrubro) : this.articulos; // = this.repuestos.map(r => r.modelo);
    
  }


  ngOnInit(): void {
    this.getArticulos();
    this.getCategorias();
  }
}
