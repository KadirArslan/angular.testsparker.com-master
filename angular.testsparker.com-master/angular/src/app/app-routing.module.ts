import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { LanguagesComponent } from './languages/languages.component';
import { ResultsComponent } from './results/results.component';
import { ComponentsComponent } from './components/components.component';
import { ExtrasComponent } from './extras/extras.component';
import { DocsComponent } from './docs/docs.component';
import { ContactComponent } from './contact/contact.component';
import { ActivityComponent } from './activity/activity.component';
import { UserComponent } from './user/user.component';

const routes: Routes = [
	{ path: '', redirectTo: '/home', pathMatch: 'full' },
	{ path: 'home', component: HomeComponent },
	{ path: 'activity', component: ActivityComponent },
	{ path: 'languages', component: LanguagesComponent },
	{ path: 'results', component: ResultsComponent },
	{ path: 'components', component: ComponentsComponent },
	{ path: 'extras', component: ExtrasComponent },
	{ path: 'docs', component: DocsComponent },
	{ path: 'contact', component: ContactComponent },
	{ path: 'user/:username', component: UserComponent }
];

@NgModule({
	//imports: [RouterModule.forRoot(routes, { useHash: true })],
	imports: [RouterModule.forRoot(routes)],
	exports: [RouterModule]
})

export class AppRoutingModule { }