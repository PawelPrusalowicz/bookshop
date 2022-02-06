import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UserListComponent } from './user-list/user-list.component';
import { ProductListComponent } from './product-list/product-list.component';
import { UserFormComponent } from './user-form/user-form.component';
import { ClientFormComponent } from './client-form/client-form.component';
import {CartComponent} from "./cart/cart.component";
import {ReportsComponent} from "./reports/reports.component";
import {OrderHistoryComponent} from "./order-history/order-history.component";


const routes: Routes = [
  { path: 'users', component: UserListComponent },
  { path: 'adduser', component: UserFormComponent },
  { path: 'addclient', component: ClientFormComponent },
  { path: 'products', component: ProductListComponent },
  { path: 'cart', component: CartComponent},
  { path: 'reports', component: ReportsComponent},
  { path: 'history', component: OrderHistoryComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
