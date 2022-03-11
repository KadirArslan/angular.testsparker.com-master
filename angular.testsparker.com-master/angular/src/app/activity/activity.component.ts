import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { Http } from '@angular/http';
import { Globals } from '../globals';
import * as $ from 'jquery';

@Component({
  selector: 'app-activity',
  templateUrl: './activity.component.html',
  providers: [Globals],
  styleUrls: ['./activity.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class ActivityComponent implements OnInit {

  start = 0;

  constructor(
  	private http: Http,
	  private globals: Globals
  ) { }

  activities() {
  	var url = this.globals.backend_server + '/api/getActivities.php';
  	if(this.start > 0) {
  		url += '?start=' + this.start + '&directory=/';
  	}
  	
  	this.http.get(url)
			.map(response => response.json())
			.subscribe(data => {
				for(var i = 0; i < data.length; i++) {
					var obj = data[i];
					var element = '';
					element += '<li>';
					element += '<a>' + obj.title + '</a>';
					element += '<a href="/user/' + obj.username + '" class="pull-right">by ' + obj.fullname + '</a>';
					element += '<p>' + obj.detail + '</p>';
					element += '</li>';

					$('#timeline').append(element);
				}
				this.start += 5;
			});
  }

  ngOnInit() {

  	var temp = this;

  	temp.activities();

	$(window).scroll(function() {
		if($(window).scrollTop() + $(window).height() == $(document).height()) {
			temp.activities();
		}
	});

  }

}
