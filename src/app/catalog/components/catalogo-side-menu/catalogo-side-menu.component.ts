import { Component, EventEmitter, Input, OnChanges, Output, SimpleChanges } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Articulo } from 'src/app/class/articulo';
import { Subrubro } from 'src/app/class/subrubro';
import { Busqueda } from 'src/app/class/busqueda';

@Component({
  selector: 'app-catalogo-side-menu',
  templateUrl: './catalogo-side-menu.component.html',
  styleUrls: ['./catalogo-side-menu.component.scss']
})
export class CatalogoSideMenuComponent {

  @Output() busquedaSeleccionada = new EventEmitter();
  @Output() busquedaLimpiar = new EventEmitter();

  @Input() subrubros: Subrubro[] = [];
  @Input() articulos: Articulo[] = [];

  public rubros: string[] = [];

  public articulo: Articulo;

  public busqueda: Busqueda = {
    rubro: "",
    subrubro: "",
  }

  constructor(
    // private repuestosSv: repuestosService,
  ) {
    this.articulo = {};

    this.busqueda.rubro = "";
    this.busqueda.subrubro = "";
  }

  altaForm = new FormGroup({
    rubro: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
    subrubro: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
  });


  public onSubmit() {

    this.busqueda.rubro = this.altaForm.getRawValue().rubro;
    this.busqueda.subrubro = this.altaForm.getRawValue().subrubro;

    // console.table(this.busqueda);

    this.busquedaSeleccionada.emit( this.busqueda );
  }

  public reset() {
    /*
    this.busquedaLimpiar.emit();
    this.subrubros = [... new Set(this.articulos.map( a => a.subcategoria ))];
*/
   }

  ngOnChanges(changes: SimpleChanges) {

    //this.subrubros = [... new Set(this.articulos.map( a => a.subcategoria ))];

    if (changes['articulos']) {
      this.articulos = changes['articulos'].currentValue;
    }
  }

}
