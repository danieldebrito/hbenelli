
export class Articulo {
  constructor(
    public id?: number,
    public subcategoria?: string,
    public idCategoria?: number,
    public idDetalle?: number,
    public codigo?: string,
    public nombre?: string,
    public peso?: string,
    public unidad?: string,
    public urlPhoto?: string
  ) { }
}