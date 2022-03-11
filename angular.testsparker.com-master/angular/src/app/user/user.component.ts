import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Location } from '@angular/common';
import { Http } from '@angular/http';
import { Globals } from '../globals';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  providers: [Globals],
  styleUrls: ['./user.component.css'],
  encapsulation: ViewEncapsulation.None
})

export class UserComponent implements OnInit {

	username;
	fullname;
	activityCount;
	avatar;

	constructor(
		private route: ActivatedRoute,
		private location: Location,
		private http: Http,
	  	private globals: Globals
	) { }

	ngOnInit() {
		this.username = this.route.snapshot.paramMap.get('username');
		this.http.get(this.globals.backend_server + '/api/getUser.php?username=' + this.username)
			.map(response => response.json())
			.subscribe(data => {
				this.username = data[0].username;
				this.fullname = data[0].fullname;
				this.activityCount = data[0].activityCount;
				this.avatar = this.globals.backend_server + '/api/getAvatar.php?file=' + data[0].username + '.png';
			});
	}

}
