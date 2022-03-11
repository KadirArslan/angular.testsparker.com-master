import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import * as $ from 'jquery';
import { Http } from '@angular/http';
import { Globals } from '../globals';

@Component({
	selector: 'app-contact',
	templateUrl: './contact.component.html',
	providers: [Globals],
	styleUrls: ['./contact.component.css'],
	encapsulation: ViewEncapsulation.None
})

export class ContactComponent implements OnInit {

	constructor(
		private http: Http,
		private globals: Globals
	) { }

	ngOnInit() {

	}

	sendForm() {
		var email = $('#email').val();
		var range = $('#range').val();

		this.http.get(this.globals.backend_server + '/api/contact.php?email=' + email + '&range=' + range)
			.map(response => response.json())
			.subscribe(data => {

				var style = 'success';
				if(data.result == 'error'){
					style = 'danger';
				}

				$('#result').html('');

				for (let message of data.messages) {
					$('#result').append('<div class="alert alert-' + style + '">' + message + '</div>');
				}

			});

	}

}
