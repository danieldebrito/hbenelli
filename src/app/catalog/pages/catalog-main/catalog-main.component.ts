import { Component, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';
import { Subrubro } from 'src/app/class/subrubro';
import { ArticulosService } from 'src/app/services/articulos.service';
import { SubrubrosService } from 'src/app/services/subrubros.service';
import { Busqueda } from 'src/app/class/busqueda';


@Component({
  selector: 'app-catalog-main',
  templateUrl: './catalog-main.component.html',
  styleUrls: ['./catalog-main.component.scss']
})
export class CatalogMainComponent implements OnInit {

  public articulos: Articulo[] = [];
  public filterArticulos: Articulo[] = [];

  public subrubros: Subrubro[] = [];

  constructor(
    private articulosSv: ArticulosService,
    private subrubrosSv: SubrubrosService,
  ) { }

  public getArticulos() {
    this.articulosSv.getAll().subscribe(data => {
      this.articulos = data;
      this.filterArticulos = data;  // ACA MOSTRAR PRIMERO LOS HILOS, HACER !!!
      //console.table(this.filterArticulos);
    });

  }

  public getSubrubros() {
    this.subrubrosSv.getAll().subscribe(data => {
      this.subrubros = data;
      //this.filterArticulos = data;

      //console.table(this.filterArticulos);
    });
  }

  filtrar(event: Busqueda) {

    this.filterArticulos = this.articulos.filter( art => art.rubro == event.rubro );
    

    /*
    console.table(event.idCategoria?.toString())

    let filteredArticulos = [...this.articulos]; // resetear el filtrado cada vez que se hace una nueva búsqueda
    filteredArticulos = event.rubro !== '' ? filteredArticulos.filter(a => a.subcategoria === event.rubro) : filteredArticulos;

    filteredArticulos = event.idCategoria !== '' ? filteredArticulos.filter(r => r.idCategoria == event.idCategoria?.toString()) : filteredArticulos;
    this.filterArticulos = filteredArticulos;
    */

  }



  ngOnInit(): void {
    this.getArticulos();
    this.getSubrubros();
  }
}
