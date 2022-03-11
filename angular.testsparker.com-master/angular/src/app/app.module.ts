import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatFormFieldModule, MatInputModule, MatAutocompleteModule, MatSlideToggleModule, MatTableModule } from '@angular/material';
import { CalendarModule } from 'angular-calendar';
import { DateTimePickerModule } from 'ng-pick-datetime';
import { NgSelectModule } from '@ng-select/ng-select';

import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { LanguagesComponent } from './languages/languages.component';
import { DocsComponent } from './docs/docs.component';
import { ContactComponent } from './contact/contact.component';
import { ResultsComponent } from './results/results.component';
import { ExtrasComponent } from './extras/extras.component';
import { ComponentsComponent } from './components/components.component';
import { ActivityComponent } from './activity/activity.component';
import { UserComponent } from './user/user.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    LanguagesComponent,
    DocsComponent,
    ContactComponent,
    ResultsComponent,
    ExtrasComponent,
    ComponentsComponent,
    ActivityComponent,
    UserComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    NgSelectModule,
    ReactiveFormsModule,
    HttpModule,
    BrowserAnimationsModule,
    MatFormFieldModule,
    MatInputModule,
    MatAutocompleteModule,
    MatSlideToggleModule,
    MatTableModule,
    CalendarModule.forRoot(),
    DateTimePickerModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
