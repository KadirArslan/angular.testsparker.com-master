import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import * as $ from 'jquery';

@Component({
	selector: 'app-results',
	templateUrl: './results.component.html',
	styleUrls: ['./results.component.css'],
	encapsulation: ViewEncapsulation.None
})
export class ResultsComponent implements OnInit {

	test;
	showForm1;
	showForm2;
	username;
	certificate;

	constructor() { }

	ngOnInit() {
		this.showForm1 = 1;
		if (localStorage.getItem("username") !== null) {
			this.showForm1 = 0;
			this.username = localStorage.getItem("username");
		}

		this.showForm2 = 1;
		if (sessionStorage.getItem("certificate") !== null) {
			this.showForm2 = 0;
			this.certificate = sessionStorage.getItem("certificate");
		}
	}

	sendForm1() {
		this.showForm1 = 0;
		this.username = $("#username").val();
		localStorage.setItem("username", this.username);
		localStorage.setItem("ip", atob("MTAuMC4wLjE="));
	}

	sendForm2() {
		this.showForm2 = 0;
		this.certificate = $("#certificate").val();
		sessionStorage.setItem("certificate", this.username);
		sessionStorage.setItem("ip", atob("MTAuMC4wLjI="));
	}

}
