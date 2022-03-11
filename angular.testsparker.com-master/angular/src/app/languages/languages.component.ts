import { Component, OnInit, ViewEncapsulation, Input } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Http } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/startWith';
import 'rxjs/add/operator/map';
import { Globals } from '../globals';
import * as $ from 'jquery';


@Component({
	selector: 'app-languages',
	templateUrl: './languages.component.html',
	providers: [Globals],
	styleUrls: [
		'../../../node_modules/@angular/material/prebuilt-themes/indigo-pink.css',
		'./languages.component.css'
	]
})

export class LanguagesComponent implements OnInit {

	languageCtrl: FormControl;
	filteredLanguages;
	languages;

	constructor(
		private http: Http,
		private globals: Globals
	) {
		this.languageCtrl = new FormControl();
	}

	ngOnInit() {
		this.http.get(this.globals.backend_server + '/api/getLanguages.php')
			.map(response => response.json())
			.subscribe(data => {
				this.languages = data.itemListElement;
				this.filteredLanguages = this.languages;
			});
	}

	click(value) {
		this.http.get(this.globals.backend_server + '/api/getLanguage.php?value=' + value)
			.map(response => response.json())
			.subscribe(data => {

				var result = '';
				if(data.message){
					result += '<b>Search: </b>' + data.search + '</br>';
					result += '<b>Error Message: </b>' + data.message + '</br>';
				} else {
					result += '<b>Search: </b>' + data.search + '</br>';
					result += '<b>Position: </b>' + data.position + '</br>';
					//result += '<b>Type: </b>' + data.item.type + '</br>';
					result += '<b>Name: </b>' + data.item.name + '</br>';
					result += '<b>Detail: </b>' + data.item.id + '</br>';
				}
				$('#result > div').html(result);

			});

		this.http.get(this.globals.backend_server + '/api/languageClick.php?value=' + value)
		.map(response => response)
		.subscribe();
	}

	onSearchChange(value : string ) {  
		if(value){
			this.http.get(this.globals.backend_server + '/api/searchLanguage.php?value=' + value)
				.map(response => response.json())
				.subscribe(data => {
					console.log('search: ' + data);
				});
		}
	}

	@Input() set languageinput(value) {
		if(value){
			this.click(value.item.name)
		}
	}
}