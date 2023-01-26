import { Component, Input } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';
import { Categoria } from 'src/app/class/categoria';

@Component({
  selector: 'app-catalog-cards-grid',
  templateUrl: './catalog-cards-grid.component.html',
  styleUrls: ['./catalog-cards-grid.component.scss']
})
export class CatalogCardsGridComponent {

  p = 1;

  @Input() articulos: Articulo[] = [];
  @Input() categorias: Categoria[] = [];

}
