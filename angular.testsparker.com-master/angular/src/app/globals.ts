import { Injectable } from '@angular/core';

@Injectable()
export class Globals {
    // should be only protocol and domain, not port or path. example: http://omercitak.com
    backend_server: string = window.location.origin; // production env
    //backend_server: string = 'http://52.1.112.43'; // local development env

	// should be only port. example: 8000
    token_server_port: string = '8000';
}