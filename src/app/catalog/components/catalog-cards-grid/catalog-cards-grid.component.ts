import { Component, Input, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';

@Component({
  selector: 'app-catalog-cards-grid',
  templateUrl: './catalog-cards-grid.component.html',
  styleUrls: ['./catalog-cards-grid.component.scss']
})
export class CatalogCardsGridComponent implements OnInit {

  p = 1;

  @Input() articulos: Articulo[] = [];

  ngOnInit(){
    setTimeout(() => {
      console.log(this.articulos);
    }, 2000);
      }
    


}
