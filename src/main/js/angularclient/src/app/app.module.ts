import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { UserListComponent } from './user-list/user-list.component';
import { ProductListComponent } from './product-list/product-list.component';
import { UserFormComponent } from './user-form/user-form.component';
import { ClientFormComponent } from './client-form/client-form.component';
import { UserService } from './service/user.service';
import { ProductService } from './service/product.service';
import { ClientService } from './service/client.service';
import { CartService } from './service/cart.service';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { MatButtonToggleModule} from "@angular/material/button-toggle";
import { ToastMessagesComponent } from './toast-messages/toast-messages.component';
import { CartComponent } from './cart/cart.component';
import { authInterceptorProviders } from './_helpers/auth.interceptor';


@NgModule({
  declarations: [
    AppComponent,
    UserListComponent,
    UserFormComponent,
    ProductListComponent,
    ClientFormComponent,
    HeaderComponent,
    FooterComponent,
    ToastMessagesComponent,
    CartComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    NoopAnimationsModule,
    MatButtonToggleModule
  ],
  providers: [authInterceptorProviders, UserService, ProductService, ClientService, CartService],
  bootstrap: [AppComponent]
})
export class AppModule { }
