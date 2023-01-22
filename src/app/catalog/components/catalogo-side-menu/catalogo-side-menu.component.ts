import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-catalogo-side-menu',
  templateUrl: './catalogo-side-menu.component.html',
  styleUrls: ['./catalogo-side-menu.component.scss']
})
export class CatalogoSideMenuComponent implements OnInit{

  @Output() repuestoBuscar = new EventEmitter();

  // repuestos: Repuesto[] = [];

  public marcas: string[] = [];
  public modelos: string[] = [];
  public rubros: string[] = [];
  public subRubros: string[] = [];

  // public repuesto: Repuesto;

  constructor(
    // private repuestosSv: repuestosService,
  ) { }

  altaForm = new FormGroup({
    marca: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
    modelo: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
    rubro: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
    subRubro: new FormControl('', [
      Validators.required,
      Validators.minLength(2),
      Validators.maxLength(40),
    ]),
  });


  public onSubmit() { }

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

  public onSubmit() {
    this.repuesto = this.altaForm.getRawValue();
    this.filtrarRepuestos(this.repuesto);
    this.repuestoBuscar.emit({
      repuestoLanzado: this.repuesto,
      repuestosLanzados: this.repuestos
    });
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
