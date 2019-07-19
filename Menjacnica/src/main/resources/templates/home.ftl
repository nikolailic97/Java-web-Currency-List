<!DOCTYPE html>
<html>
    <head>
        <title>Kursna Lista EUR</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="img" href="../public/flags">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <body>
        <header id="headerNaslov">
        <h1 id="naslov">Kursna Lista EUR</h1>
        
        </header>
        
        <section id="container">
        <!-- Div container  -->
            <!-- boja sa ivice leve strane -->
        <div id="leftColor">
            <p> color</p>
        </div>             
        <div id="leftSide">
              
        <!-- Div vreme azuriranja i trenutni datum  -->
        <div id="divDatum">
            <div id="divVreme">
            <table id="tVreme">
            <tr>
              <th id="vreme"> Ažurirano : ${vreme}</th>
            </tr>
          </table>
                </div>
            <table id="tDatum">
            <tr>
              <th id="datum">${datum}</th>
            </tr>
          </table>
        </div>
        <!-- ** KRAJ Div vreme azuriranja i trenutni datum ** -->
                
        <!-- Div Lista valuta -->
        <div id="divLista">
        <table class="tM">
            <tr>
              <th class="tM-oznake">Valuta</th>
              <th class="tM-oznake">ISO</th>
              <th class="tM-oznake">OZN</th>
              <th class="tM-oznake">PAR</th>
              <th class="tM-oznake">KUPOVNI</th>
              <th class="tM-oznake">SREDNJI</th>
              <th class="tM-oznake">PRODAJNI</th>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/united-states.png">Američki dolar</td>
              <td class="tM-valute">USD</td>
              <td class="tM-valute">$</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-usdK">${currUsdK}</td>
              <td class="tM-valute-usdS">${currUsd}</td>
              <td class="tM-valute-usdP">${currUsdP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/australia.png">Australijski dolar</td>
              <td class="tM-valute">AUD</td>
              <td class="tM-valute">$</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-audK">${currAudK}</td>
              <td class="tM-valute-audS">${currAud}</td>
              <td class="tM-valute-audP">${currAudP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/bosnia.png">BiH konvertibilna marka</td>
              <td class="tM-valute">BAM</td>
              <td class="tM-valute">KM</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-bamK">${currBamK}</td>
              <td class="tM-valute-bamS">${currBam}</td>
              <td class="tM-valute-bamP">${currBamP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/uk.png">Britanska funta</td>
              <td class="tM-valute">GBP</td>
              <td class="tM-valute">£</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-gbpK">${currGbpK}</td>
              <td class="tM-valute-gbpS">${currGbp}</td>
              <td class="tM-valute-gbpP">${currGbpP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/croatia.png">Hrvatska kuna</td>
              <td class="tM-valute">HRK</td>
              <td class="tM-valute">kn</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-hrkK">${currHrkK}</td>
              <td class="tM-valute-hrkS">${currHrk}</td>
              <td class="tM-valute-hrkP">${currHrkP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/japan.png">Japanski jen</td>
              <td class="tM-valute">JPY</td>
              <td class="tM-valute">¥</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-jpyK">${currJpyK}</td>
              <td class="tM-valute-jpyS">${currJpy}</td>
              <td class="tM-valute-jpyP">${currJpyP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/canada.png">Kanadski dolar</td>
              <td class="tM-valute">CAD</td>
              <td class="tM-valute">$</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-cadK">${currCadK}</td>
              <td class="tM-valute-cadS">${currCad}</td>
              <td class="tM-valute-cadP">${currCadP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/hungary.png">Mađarska forinta</td>
              <td class="tM-valute">HUF</td>
              <td class="tM-valute">Ft</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-hufK">${currHufK}</td>
              <td class="tM-valute-hufS">${currHuf}</td>
              <td class="tM-valute-hufP">${currHufP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/russia.png">Rublja</td>
              <td class="tM-valute">RUB</td>
              <td class="tM-valute">руб.</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-rubK">${currRubK}</td>
              <td class="tM-valute-rubS">${currRub}</td>
              <td class="tM-valute-rubP">${currRubP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/serbia.png">Srpski dinar</td>
              <td class="tM-valute">RSD</td>
              <td class="tM-valute">rsd</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-rsdK">${currRsdK}</td>
              <td class="tM-valute-rsdS">${currRsd}</td>
              <td class="tM-valute-rsdP">${currRsdP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/czech.png">Česka kruna</td>
              <td class="tM-valute">CZK</td>
              <td class="tM-valute">Kč</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-czkK">${currCzkK}</td>
              <td class="tM-valute-czkS">${currCzk}</td>
              <td class="tM-valute-czkP">${currCzkP}</td>
            </tr>
            <tr>
              <td class="tM-valute"><img class="tabelaZastava" src="flags/switzerland.png">Švajcarski franak</td>
              <td class="tM-valute">CHF</td>
              <td class="tM-valute">Fr</td>
              <td class="tM-valute">1</td>
              <td class="tM-valute-chfK">${currChfK}</td>
              <td class="tM-valute-chfS">${currChf}</td>
              <td class="tM-valute-chfP">${currChfP}</td>
            </tr>
          </table>
      </div>
             
        </div> <!--  kraj div left side   -->
        <!-- ** KRAJ Div Lista valuta ** -->
        <!-- boja sa ivice desne strane -->
        <div id="rightColor">
            <p>color</p>
        </div>
                      
        <div id="rightSide">
        <!-- Div Srednji kurs rsd i dolar  -->
        <div id="divSrednjiKurs">
            <h4 id="kursNaslov">Srednji kurs EUR</h4>
            <p class="kursZastava"> <img class="kursZastava" src="flags/serbia.png"> RSD :   ${currRsd}</p>
            <p class="kursZastava"> <img class="kursZastava" src="flags/united-states.png"> USD :   ${currUsd}</p>
            <p class="kursZastava"> <img class="kursZastava" src="flags/uk.png"> GBP :   ${currGbp}</p>
            <p id="osvezeno"></p>
        </div>
        <!-- ** KRAJ Div Srednji kurs rsd i dolar  ** -->
  
        <!-- Div konvertor valuta  -->
        <div id="divKonvertor">
            <form>
                <h4 class="konvText">Iz</h4>
            <select id="prva">
                <option value="EUR" selected>EUR</option>     
            </select> 
                <h4 class="konvText">U</h4>
                <select id="druga">
                <option >EUR</option>
                <option >USD</option>
                <option >AUD</option>
                <option >BAM</option>
                <option >GBP</option>
                <option >HRK</option>
                <option >JPY</option>
                <option >CAD</option>
                <option >HUF</option>
                <option >RUB</option>
                <option selected>RSD</option>
                <option >CZK</option>
                <option >CHF</option>
            </select> 
            </form>
            <h4 class="konvText">Iznos</h4>
            <input type="number" min="0" max="1000000" id="unos"></input>
            <button id="btnCon">Konvertuj</button>
            <h4 class="konvText">Rezultat</h4>
            <p id="spanR"><span class="rezultat"></span></p>
        </div>
        <!-- ** KRAJ Div konvertor valuta ** -->
           
        <!-- Div preuzmi u txt  -->
        <div id="preuzmiTxt">
            <h4> Preuzmi Tabelu </h4>
            <button id="btnPreuzmi">Preuzmi</button>
        </div>
        <!-- ** KRAJ Div preuzmi u txt ** -->
        
        <!-- Kraj div container -->               
        </div>
            <iframe id="txtArea1" style="display:none"></iframe> 
            </div> <!--   kraj div right side  -->
          
        </section>       
    <!-- JS --> 
   <script>
             
        // Azuriranje Podataka u tabeli
        
        const usdS = document.getElementsByClassName("tM-valute-usdS");
        const usdK = document.getElementsByClassName("tM-valute-usdK");
        const usdP = document.getElementsByClassName("tM-valute-usdP");
           
        const audS = document.getElementsByClassName("tM-valute-audS");
        const audK = document.getElementsByClassName("tM-valute-audK");
        const audP = document.getElementsByClassName("tM-valute-audP");
        
        const bamS = document.getElementsByClassName("tM-valute-bamS");
        const bamK = document.getElementsByClassName("tM-valute-bamP");
        const bamP = document.getElementsByClassName("tM-valute-bamK");
            
        const gbpS = document.getElementsByClassName("tM-valute-gbpS");
        const gbpP = document.getElementsByClassName("tM-valute-gbpP");
        const gbpK = document.getElementsByClassName("tM-valute-gbpK");
            
        const hrkS = document.getElementsByClassName("tM-valute-hrkS");
        const hrkP = document.getElementsByClassName("tM-valute-hrkP");
        const hrkK = document.getElementsByClassName("tM-valute-hrkK");
            
        const jpyS = document.getElementsByClassName("tM-valute-jpyS");
        const jpyP = document.getElementsByClassName("tM-valute-jpyP");
        const jpyK = document.getElementsByClassName("tM-valute-jpyK");
            
        const cadS = document.getElementsByClassName("tM-valute-cadS");
        const cadP = document.getElementsByClassName("tM-valute-cadP");
        const cadK = document.getElementsByClassName("tM-valute-cadK");
            
        const hufS = document.getElementsByClassName("tM-valute-hufS");
        const hufP = document.getElementsByClassName("tM-valute-hufP");
        const hufK = document.getElementsByClassName("tM-valute-hufK");
            
        const rubS = document.getElementsByClassName("tM-valute-rubS");
        const rubP = document.getElementsByClassName("tM-valute-rubP");
        const rubK = document.getElementsByClassName("tM-valute-rubK");     
            
        const rsdS = document.getElementsByClassName("tM-valute-rsdS");
        const rsdP = document.getElementsByClassName("tM-valute-rsdP");
        const rsdK = document.getElementsByClassName("tM-valute-rsdK");
            
        const czkS = document.getElementsByClassName("tM-valute-czkS");
        const czkP = document.getElementsByClassName("tM-valute-czkP");
        const czkK = document.getElementsByClassName("tM-valute-czkK");
            
        const chfS = document.getElementsByClassName("tM-valute-chfS");
        const chfP = document.getElementsByClassName("tM-valute-chfP");
        const chfK = document.getElementsByClassName("tM-valute-chfK");
            
       function updateVreme() {
           var now = new Date();
           document.getElementById("vreme").innerHTML = "Ažurirano : " + now.getHours() 
           + ":" + now.getMinutes() + ":" + now.getSeconds();
       }
            
       setInterval(function() {
           usdS.textContent = ${currUsd};
           usdK.textContent = ${currUsdK};
           usdP.textContent = ${currUsdP};
               
           audS.textContent = ${currAud};
           audK.textContent = ${currAudK};
           audP.textContent = ${currAudP};
               
           bamS.textContent = ${currBam};
           bamK.textContent = ${currBamK};
           bamP.textContent = ${currBamP};
               
           gbpS.textContent = ${currGbp};
           gbpK.textContent = ${currGbpK};
           gbpP.textContent = ${currGbpP};
               
           hrkS.textContent = ${currHrk};
           hrkK.textContent = ${currHrkK};
           hrkP.textContent = ${currHrkP};
               
           jpyS.textContent = ${currJpy};
           jpyK.textContent = ${currJpyK};
           jpyP.textContent = ${currJpyP};
               
           cadS.textContent = ${currCad};
           cadK.textContent = ${currCadK};
           cadP.textContent = ${currCadP};
               
           hufS.textContent = ${currHuf};
           hufK.textContent = ${currHufK};
           hufP.textContent = ${currHufP};
               
           rubS.textContent = ${currRub};
           rubK.textContent = ${currRubK};
           rubP.textContent = ${currRubP};
               
           rsdS.textContent = ${currRsd};
           rsdK.textContent = ${currRsdK};
           rsdP.textContent = ${currRsdP};
               
           czkS.textContent = ${currCzk};
           czkK.textContent = ${currCzkK};
           czkP.textContent = ${currCzkP};
               
           chfS.textContent = ${currChf};
           chfK.textContent = ${currChfK};
           chfP.textContent = ${currChfP};
            
           updateVreme();          
           console.log("osvezeno");
       }, 3600000); // vreme osvezavanja (na svakih 1h)

       /* Funkcija za cuvanje tabele */
    function download_csv(csv, filename) {
        var csvFile;
        var downloadLink;

        // CSV FILE
        csvFile = new Blob([csv], {type: "text/csv"});

        // Download link
        downloadLink = document.createElement("a");

        // File name
        downloadLink.download = filename;

        // link to the file
        downloadLink.href = window.URL.createObjectURL(csvFile);

        // link is not displayed
        downloadLink.style.display = "none";

        // link to your DOM
        document.body.appendChild(downloadLink);

        downloadLink.click();
    }

    function export_table_to_csv(html, filename) {
            var csv = [];
            var rows = document.querySelectorAll("table tr");

        for (var i = 0; i < rows.length; i++) {
                    var row = [], cols = rows[i].querySelectorAll("td, th");

            for (var j = 0; j < cols.length; j++) 
                row.push(cols[j].innerText);

                    csv.push(row.join(","));		
            }

        // Download CSV
        download_csv(csv.join("\n"), filename);
        }
    /* dodavanje u btn */
    document.querySelector("#btnPreuzmi").addEventListener("click", function () {
        var html = document.querySelector(".tM").outerHTML;
            export_table_to_csv(html, "Kursna Lista.csv");
    });

    // Konvertor valuta
       
    var crrncy = {'EUR' : {'USD' : ${currUsd}, 'AUD' : ${currAud}, 'BAM' : ${currBam},
    'GBP' : ${currGbp}, 'HRK' : ${currHrk}, 'JPY' : ${currJpy}, 'CAD' : ${currCad},
    'HUF' : ${currHuf}, 'RUB' : ${currRub}, 'RSD' : ${currRsd}, 'CZK' : ${currCzk},
    'CHF' : ${currChf} } }
        
    const btnCon = document.querySelector("#btnCon"); 
    var prva = document.querySelector("#prva");
    var druga = document.querySelector("#druga");
    var unos = document.querySelector("#unos");
    var rezultat = document.querySelector(".rezultat");
        
        function konvert() {
            var amount = unos.value;
            var from = prva.value;
            var to = druga.value;
            var result = 0;
                
                try{
                 if(from == to) {
                  result = amount;
                 } else {
                     result = amount * crrncy[from][to];
                 }
                     
                } catch(err) {
                   result = amount * (1 / crrncy[to][from]);
                }
                    
                    console.log(result);
                    rezultat.textContent = to + ": " + result;
        }
                
               document.getElementById("btnCon").addEventListener("click", function() {
                   konvert();
                   console.log("kliknuto");
               });          
    </script>
    </body>
    </html>
