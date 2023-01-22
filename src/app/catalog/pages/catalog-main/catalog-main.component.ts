import { Component, OnInit } from '@angular/core';
import { ArticulosService } from 'src/app/services/articulos.service';

@Component({
  selector: 'app-catalog-main',
  templateUrl: './catalog-main.component.html',
  styleUrls: ['./catalog-main.component.scss']
})
export class CatalogMainComponent implements OnInit  {

  constructor(
    private articulosSv: ArticulosService,
  ) { }

  ngOnInit(): void {


    this.articulosSv.getAll().subscribe( res => {
      console.log(res);
    } );


  }

}
