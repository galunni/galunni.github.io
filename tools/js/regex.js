// regex.js
// giovanni 2015
// making use of the javascript regex engine to test a regular expression on a given text input

// beta version installed on:
// http://galunni.github.io/tools/regex_tester.html

var testo = "";
    
function adoptText()
{
    testo =  
    document.getElementById('textOutput').innerHTML = 
    document.getElementById('textInput').value;
    
    updateResults();
}
    
function updateResults()
{
  if(document.activeElement.name == "testo_match"){
      matchIt(); 
  }
  else if(document.forms.formulario.testo_sub_1.value.length >= 1) {
    substituteIt(); 
    }
  else if(document.forms.formulario.testo_match.value.length >= 1) {
    matchIt(); 
    }
}
    
function getFlags()
{
   var flags = "";  // reading modifiers
    
   flags += (document.forms.formulario.global_flag.checked) ? "g" : ""; // global 
   flags += (document.forms.formulario.ignore_flag.checked) ? "i" : ""; // ignore case
   flags += (document.forms.formulario.multi_flag.checked)  ? "m" : ""; // multiline
    
  return flags;
}

function matchIt()
{
   var rr = 
   eval("/" + document.forms.formulario.testo_match.value + "/" + getFlags());
       
  document.getElementById("textOutput").innerHTML = 
  testo.replace(rr, '<b class="match">' + "$&" + '</b>');
    
  // update bg color of selected method (match)  
  document.getElementById("matcher").style.backgroundColor="#8C9C88";
  document.getElementById("subster").style.backgroundColor="transparent";
}
    
function substituteIt()
{
   var r1 = eval("/" + document.forms.formulario.testo_sub_1.value + "/" + getFlags());
   var r2 = document.forms.formulario.testo_sub_2.value;
  document.getElementById("textOutput").innerHTML = 
    testo.replace(r1, '<b class="subst">' + r2  + '</b>');
    
  // update bg color of selected method (substitute)
  document.getElementById("subster").style.backgroundColor="#F2DBAE";
  document.getElementById("matcher").style.backgroundColor="transparent";
}
