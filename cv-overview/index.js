const nodeHtmlToImage = require('node-html-to-image')
const fs = require('fs')

let style=`  body {
  margin:0;
  padding:0;
  width: 980px;
  height: 500px;
}
.odd-column {
  background-color: gray;
}
.even-column {
  background-color:lightgray;
}
table {
  border-spacing: 0px;
  border-collapse: colapse;
}
table, tr, td {
  border: 0;
  margin: 0;
  padding: 0;
}

td {
  padding-left: 3px;
  padding-top: 6px;
  font-size: 12px;
}`


let getYear = (i) => (1998 + i).toString().substring(2);

let myCarreer = () => {
    return Array(26).fill(1).map((el, i) => `<td colspan="12">${getYear(i)}</td>`).join("");
}

let years = () => {
  return Array(26)
      .fill(1)
      .map((el, i) => 
              Array(12)
                 .fill(1)
                 .map((el, i) => `<td class="${i % 2 == 0 ? 'odd-column' : 'even-column' }"></td>`).join("")).join("");
}

let draw = (months, color, content) => `<td colspan="${months}" style="background-color: ${color}; text-align:center">${content}</td>`

let createDataForImage = (imagename,width) => {
  const image = fs.readFileSync(imagename);
  const base64Image = new Buffer.from(image).toString('base64');
  return `<img src="data:image/jpeg;base64,${base64Image}" width="${width}px"/>`
}

let describe = (what, title, from, to) => `<u>${createDataForImage(what + ".png",16)} ${title}</u><br>${from}<br>${to}<br>`

let html = `<html>
<head>
<style type="text/css">
  ${style}
</style>
</head>
<body>
  <table>
    <tr>
      ${myCarreer()}
    </tr>
    <tr>
      ${years()}
    </tr>
    <tr>
      ${draw(172,'#DBF5F0', '<b>Software Engineer</b>' )}
      ${draw(81,'#A4E5E0', '<b>Lead Software Engineer</b>')}   
      ${draw(58,'#DBF5F0', '<b>Solutions Architect</b>')}
    </tr>
    <tr>
      ${draw(44,'#DBF5F0', describe('icon-education', 'Applied Informatics', '1998', '2001') + createDataForImage('./kdg.png', 80))}
      ${draw(28,'#A4E5E0', describe('icon-education', 'Software Engineer', '2001', '2003') + createDataForImage('./avans.png',80))}
      ${draw(63,'white', "")}
      ${draw(108,'white', "")}
      ${draw(30,'white', "")}
      ${draw(26,'#A4E5E0', describe('icon-work', 'Architect', '01/2021', '04/2022') + createDataForImage('./inetum.png',70))}
    </tr>
    <tr>
      <td colspan="44" rowspan="2" style="background-color:gray"></td>
      ${draw(91,'#DBF5F0',  describe('icon-work', 'Consultant', '08/2001', '12/2008') + createDataForImage('./capgemini.png',80))}
      
      ${draw(108,'#A4E5E0', describe('icon-work', 'Consultant', '01/2009', '12/2017') + createDataForImage('./hpe.png',80))}
      ${draw(36,'#DBF5F0', describe('icon-work', 'Architect', '01/2018', '12/2020') + createDataForImage('./aquafin.png',80))}
      ${draw(17,'#A4E5E0', "")}
      ${draw(12,'#DBF5F0', "")}
    </tr>
    <tr>
      ${draw(19,'#DBF5F0',  describe('icon-project', 'Sirene', '08/2001', '06/2003') + createDataForImage('./fortis.png',70))}
      ${draw(72,'#A4E5E0',  describe('icon-project', 'Salary', '07/2003', '12/2008') + createDataForImage('./usg.png',80))}   
      ${draw(37,'#DBF5F0',  describe('icon-project', 'VFP', '01/2009', '02/2012') + createDataForImage('./vo-vlabel.png',80))}
      ${draw(50,'#A4E5E0',  describe('icon-project', 'VLOK/SPW', '03/2012', '05/2016') + createDataForImage('./vo-wvl.png',80))}    
      ${draw(21,'#DBF5F0',  describe('icon-project', 'WebIdm', '06/2016', '12/2017') + createDataForImage('./vo-hfb.png',70))}
      ${draw(40,'white', "")}
      ${draw(26,'#DBF5F0', describe('icon-work', 'Architect', '05/2022', '03/2023') + createDataForImage('./confluent.png',70))}
    </tr>
    <tr>
      ${draw(44,'white', "<b>Main Program Language:</b>")}
      ${draw(19,'#A4E5E0', createDataForImage('./cpp-logo.png',50))}
      ${draw(90,'#DBF5F0', createDataForImage('./oracle-logo.png',80))}   
      ${draw(80,'#A4E5E0', createDataForImage('./java-logo.png',80))}
      ${draw(24,'#DBF5F0', createDataForImage('./angular-logo.png',50))}
      </tr>
      <tr>
        ${draw(44,'white', "<b>Primary Language:</b>")}
        ${draw(19,'#DBF5F0',  "FR<br>" + createDataForImage('./language_french.png',30))}
        ${draw(216,'#A4E5E0',  "NL<br>" + createDataForImage('./language_dutch.png',30))}
        ${draw(18,'#DBF5F0',  "FR<br>" + createDataForImage('./language_french.png',30))}
        ${draw(12,'#A4E5E0',  "EN<br>" + createDataForImage('./language_english.png',30))}
      </tr>  
      <tr>
        ${draw(44,'white', "<b>Secundary Language:</b>")}
        ${draw(19,'#DBF5F0',  "NL<br>" + createDataForImage('./language_dutch.png',30))}
        ${draw(72,'#A4E5E0',  "FR<br>" + createDataForImage('./language_french.png',30))}
        ${draw(144,'#DBF5F0',  "EN<br>" + createDataForImage('./language_english.png',30))}
        ${draw(30,'#A4E5E0',  "ES<br>" + createDataForImage('./language_spanish.png',30))}
      </tr> 

  </table>
</body>
</html>
`

fs.writeFile('output.html', html, (err) => {});

//console.log(html)

nodeHtmlToImage({
  output: './image.png',
  html: html
})
  .then(() => console.log('The image was created successfully!'))