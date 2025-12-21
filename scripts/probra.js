niz = new Array()
function learnArray(){
    niz1=[5,4,3,2,1]
    for (i = 0; i < niz1.length; i++)
        alert(niz1[i])

    niz1.sort()
    console.log(niz1)

    niz1.push(0)
    alert(niz1)
}
function promeni(){
    setTimeout("menjam()",5000)

}
function menjam(){
    document.f.tekst.value = "nemoguce"
}
function dodaj(){
    dat=document.f.tekst2.value
    provera =document.f.boks.checked
    if(dat=="stop"){
        alert(niz)
        return
    }
    regexTelefon = /^(06(4|5)\d{7})$/
    regexMail = /^w{3-10}@gmail\.com$/

    if(regexTelefon.test(dat)==false)
        {
        alert("nepravilan unos broja")
        return
    }
    if(provera==false)
        return
    niz.push(dat)
    console.log(niz)
}

function dodajLS(){
    let ime = "Pera"
    localStorage.setItem("PoljeIme", ime)

    let objekat = {
        ime: "Jova",
        prezime: "Jovic"
    }
    localStorage.setItem("objekat", JSON.stringify(objekat))
}
function citajLS(){
    alert(localStorage.getItem("PoljeIme"))
    let prezime = JSON.parse(localStorage.getItem("objekat")).prezime
    alert(prezime)
}

function dodajDatum(){
    let datum = document.getElementById("datum").value
    let regexDatum = /^\d{4}-\d{2}-\d{2}$/
    if (regexDatum.test(datum)){
        let nizDatum = datum.split("-")
        let objDatum = new Date(nizDatum[0], parseInt(nizDatum[1])-1, parseInt(nizDatum[1]))
        let sviDatumi = []
        if(localStorage.getItem("sviDatumi")){
            sviDatumi = JSON.parse(localStorage.getItem("sviDatumi"))
        }
        sviDatumi.push(objDatum)
        localStorage.setItem("sviDatumi", JSON.stringify(sviDatumi))
    }
    else{
        alert("Nije dobar format")
    }
}