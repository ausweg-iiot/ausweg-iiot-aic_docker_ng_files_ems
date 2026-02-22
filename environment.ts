// This file can be replaced during build by using the `fileReplacements` array.
// `ng build` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: false,
  //API_URL: 'http://10.0.23.210:5102/',
  //API_URL: 'http://10.195.32.53:8001/',
  // API_URL: 'http://192.168.1.182:8001/',
  // API_URL: `${new URL(window.location.origin).protocol}//${new URL(window.location.origin).hostname}:8000/`,
  API_URL: 'https://backendemsproductdemo.auswegprime.com/',
  COMPANY_HEADLOGO1_URL: "assets/images/aa_icon.png",
  LOGIN_LEFTLOGO_URL: "assets/images/ausweg_logo.png",
  //LOGIN_LEFTLOGO_URL: "assets/images/ausweg_logo.png",
  COMPANY_SIDELOGO2_URL: "assets/images/ausweg_logo.png",
  // COMPANY_SIDELOGO2_URL: "assets/images/ausweg_logo.png",
  IMG_URL: "assets/images/ausweg_logo.png",
  SIDEBARLOGO: "assets/images/ausweg_logo.png"
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/plugins/zone-error';  // Included with Angular CLI.
