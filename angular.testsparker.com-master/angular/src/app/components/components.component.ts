import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Http } from '@angular/http';
import { MatTableDataSource } from '@angular/material';
import { Globals } from '../globals';

@Component({
	selector: 'app-components',
	templateUrl: './components.component.html',
	providers: [Globals],
	styleUrls: [
		'./components.component.css',
		'../../../node_modules/angular-calendar/dist/css/angular-calendar.css',
		'../../../node_modules/ng-pick-datetime/assets/style/picker.min.css',

	],
	encapsulation: ViewEncapsulation.None
})

export class ComponentsComponent implements OnInit {

	// calendar
	viewDate: Date = new Date();
	events = [];
	// calendar end

	// datatable
	displayedColumns = ['position', 'name', 'weight', 'symbol'];
	dataSource;
	// datatable end

	constructor(
		private http: Http,
		private globals: Globals
	) { }

	ngOnInit() {
		this.http.get(this.globals.backend_server + '/api/getLanguages.php')
			.map(response => response.json())
			.subscribe(data => {
				this.dataSource = new MatTableDataSource(data.itemListElement);
			});
	}

	smartDFS() {
		this.http.get(this.globals.backend_server + '/api/smartDFS.php?username=admin&password=123456')
			.map(response => response.json())
			.subscribe(data => {
			});
	}

}
