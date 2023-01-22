import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CatalogCardsGridComponent } from './catalog-cards-grid.component';

describe('CatalogCardsGridComponent', () => {
  let component: CatalogCardsGridComponent;
  let fixture: ComponentFixture<CatalogCardsGridComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CatalogCardsGridComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CatalogCardsGridComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
