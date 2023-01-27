import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Articulo } from 'src/app/class/articulo';
import { Categoria } from 'src/app/class/categoria';
import { Busqueda } from 'src/app/class/busqueda';

@Component({
  selector: 'app-catalogo-side-menu',
  templateUrl: './catalogo-side-menu.component.html',
  styleUrls: ['./catalogo-side-menu.component.scss']
})
export class CatalogoSideMenuComponent implements OnInit {

  @Output() busquedaSeleccionada = new EventEmitter();
  @Input() categorias: Categoria[] = [];

  public articulo: Articulo;

  public busqueda: Busqueda = {
    rubro: "",
    subrubro: 0
  }

  constructor(
    // private repuestosSv: repuestosService,
  ) {
    this.articulo = {};
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

    this.busquedaSeleccionada.emit(
      this.busqueda
    );
  }

  /*
  public filtrar(repuesto: Repuesto) {
    repuesto.marca !== '' ? this.repuestos = this.repuestos.filter(r => r.marca === repuesto.marca) : this.marcas = this.repuestos.map(r => r.marca);
    repuesto.modelo !== '' ? this.repuestos = this.repuestos.filter(r => r.modelo === repuesto.modelo) : this.modelos = this.repuestos.map(r => r.modelo);


    // this.mapearFiltros();
  }
  */

  public reset() { }

  /*
  public getRepuestos() {
    this.repuestosSv.gets().subscribe(res => {
      this.repuestos = res;
      this.repuesto = this.altaForm.getRawValue();
      this.filtrarRepuestos(this.repuesto);
    });
  }

  public filtrarRepuestos(repuesto: Repuesto) {
    repuesto.marca !== '' ? this.repuestos = this.repuestos.filter(r => r.marca === repuesto.marca) : this.marcas = this.repuestos.map(r => r.marca);
    repuesto.modelo !== '' ? this.repuestos = this.repuestos.filter(r => r.modelo === repuesto.modelo) : this.modelos = this.repuestos.map(r => r.modelo);
    repuesto.rubro !== '' ? this.repuestos = this.repuestos.filter(r => r.rubro === repuesto.rubro) : this.modelos = this.repuestos.map(r => r.rubro);
    repuesto.subRubro !== '' ? this.repuestos = this.repuestos.filter(r => r.subRubro === repuesto.subRubro) : this.modelos = this.repuestos.map(r => r.subRubro);

    this.mapearFiltros();
  }

  public mapearFiltros() {
    this.marcas = [...new Set(this.repuestos.map((r) => r.marca).sort())];
    this.modelos = [...new Set(this.repuestos.map((r) => r.modelo).sort())];
    this.rubros = [...new Set(this.repuestos.map((r) => r.rubro).sort())];
    this.subRubros = [...new Set(this.repuestos.map((r) => r.subRubro).sort())];
  }



  public reset() {
    this.altaForm.reset({
      marca: '',
      modelo: '',
      rubro: '',
      subRubro: ''
    });

    this.repuestosSv.gets().subscribe(res => {
      this.repuestos = res;
      this.repuesto = {};
      this.mapearFiltros();

      this.repuestoBuscar.emit({
        repuestoLanzado: this.repuesto,
        repuestosLanzados: this.repuestos
      });


    });
  }

*/
  ngOnInit(): void {
    //this.onSubmit();
    //this.getRepuestos();
  }
}
