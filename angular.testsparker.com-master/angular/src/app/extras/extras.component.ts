import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { Http } from '@angular/http';
import { Globals } from '../globals';
import * as $ from 'jquery';

@Component({
	selector: 'app-extras',
	templateUrl: './extras.component.html',
	styleUrls: ['./extras.component.css'],
	providers: [Globals],
	encapsulation: ViewEncapsulation.None
})

export class ExtrasComponent implements OnInit {

	constructor(
		private http: Http,
		private globals: Globals
	) { }

	ngOnInit() {

		/* allow out of scope XHR */
		var token_server = this.globals.backend_server + ':' + this.globals.token_server_port + '/setToken.php';
		this.http.get(token_server)
			.map(response => response.json())
			.subscribe(data1 => {

				//console.log(data1.token);

				this.http.get(this.globals.backend_server + '/api/checkToken.php?value=' + data1.token)
					.map(response => response.json())
					.subscribe(data2 => {
						//console.log(data2.message);
						$('b#result1').html(data2.message);
					});

			});
		/* allow out of scope XHR end */
		
		/* filter document event */
		$(document).on("newMessage", function(e2) {
			window.location.replace("assets/" + atob("ZmlsdGVyX2RvY3VtZW50X2V2ZW50Lmh0bWw="));
		});
		/* filter document event end */

		/* filter colon event */
		var myEvent = new CustomEvent("two:dots");
		var btn = document.getElementById('btn2');
		btn.addEventListener("two:dots", redirect, false);
		function redirect(e) {
			window.location.replace("assets/" + atob("ZmlsdGVyX2NvbG9uX2V2ZW50Lmh0bWw="));
		}
		/* filter colon event end */

	}

}
