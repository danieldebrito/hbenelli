import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CatalogoSideMenuComponent } from './catalogo-side-menu.component';

describe('CatalogoSideMenuComponent', () => {
  let component: CatalogoSideMenuComponent;
  let fixture: ComponentFixture<CatalogoSideMenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CatalogoSideMenuComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CatalogoSideMenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
