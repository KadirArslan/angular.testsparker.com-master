import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import * as $ from 'jquery';
import { Http } from '@angular/http';
import { Globals } from '../globals';
import { Router } from '@angular/router';

@Component({
  selector: 'app-docs',
  templateUrl: './docs.component.html',
  providers: [Globals],
  styleUrls: ['./docs.component.css']
})

export class DocsComponent implements OnInit {

  lastVal;

  constructor(
    private http: Http,
    private globals: Globals,
    private router: Router
  ) {
    router.events.subscribe((val) => {
      var index = decodeURIComponent(location.hash.substr(1));
      var last = $('#last > i');
      if(index != '' && index != this.lastVal){
        this.lastVal = index;
        last.html('Chapter ' + index);
      }
    })

  }

  ngOnInit() {
  }

  addNewChapter(){
    $('#list').append('<li>Test</li>');
  }

}
