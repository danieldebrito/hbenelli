import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CatalogCardsGridComponent } from './catalog-cards-grid/catalog-cards-grid.component';
import { CatalogoSideMenuComponent } from './catalogo-side-menu/catalogo-side-menu.component';
import { ReactiveFormsModule } from '@angular/forms';


@NgModule({
  declarations: [
    CatalogCardsGridComponent,
    CatalogoSideMenuComponent,
  ],
  imports: [
    CommonModule,
    ReactiveFormsModule
  ],
  exports: [
    CatalogCardsGridComponent,
    CatalogoSideMenuComponent,
  ]
})
export class ComponentsModule { }
