<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/candraprasetya/flutter_spreadsheet">
    <img src="logo.png" alt="Logo" height="80">
  </a>

  <h3 align="center">Flutter Spreadsheet App Practice</h3>

  <p align="center">
    Using Spreadsheet as database on Flutter!
    <br />
    <br />
    <a href="https://github.com/candraprasetya/flutter_spreadsheet/">View Demo</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://kardusinfo.com)

The purpose of developing this application is to learn how to integrate Google Sheets as a database in Flutter.

### Built With

In this project, we had the opportunity to try one of the frameworks for UI design purposes.
* [Flutter](https://flutter.dev)
* [Spreadsheet](https://docs.google.com/spreadsheets/d/1He_jTIkHTBEfPp1W5v6sl3y1j0uI92zGg6ZR96Kfx3Y/edit?usp=sharing)
* [Scripts](https://script.google.com/d/1SZlCDqoTWBGmvF6EPZvLkScL-3IrrSBTLUgl5h7_5vQSiLVSAi4eIWNx/edit?usp=sharing)
* [Etc.](#)

<!-- GETTING STARTED -->
## Getting Started

the first step to starting the project is to prepare the following requirements.

### Installation

1. Clone the repo and move to main branch
   ```sh
   git clone https://github.com/candraprasetya/flutter_spreadsheet.git
   ```
3. Open with your IDE

4. Get all package
   ```sh
   flutter pub get
   ```

5. Create spreadsheet on google

6. Make a scripts
   ```sh
   function doGet(request) {
  var sheet = SpreadsheetApp.openById(YOUR ID); //Ex : "1He_jTIkHTBEfPp1W5v6sl3y1j0uI92zGg6ZR96Kfx3Y"
  var result = {"status":"SUCCESS"};

  try{
    var name = request.parameter.name; //your column name on spreadsheet
    var email = request.parameter.email;
    var rowData = sheet.appendRow([name, email]);
  }catch(e){
    result = {"status" : "FAILED", "message" : e};
  }

  return ContentService.createTextOutput(JSON.stringify(result)).setMimeType(ContentService.MimeType.JSON);

}
  ```


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact

Kardusinfo - [@kardusinfo_](https://instagram.com/kardusinfo_) - kardusinfo.com@gmail.com

Flutter Developer
Candra Prasetya - [@candraramesthy](https://instagram.com/candraramesthy)


Project Link: [https://github.com/candraprasetya/flutter_spreadsheet](https://github.com/candraprasetya/flutter_spreadsheet)

[product-screenshot]: screenshot/screenshot.gif
