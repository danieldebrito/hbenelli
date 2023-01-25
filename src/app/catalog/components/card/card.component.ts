import { Component, EventEmitter, Input, Output, OnInit } from '@angular/core';
import { Articulo } from 'src/app/class/articulo';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.scss']
})
export class CardComponent implements OnInit {

  @Input() articulo: Articulo = {};
  @Output() lanzaCompra = new EventEmitter();

  constructor() { }

  ngOnInit(){
setTimeout(() => {
  console.log(this.articulo);
}, 2000);
  }

}
