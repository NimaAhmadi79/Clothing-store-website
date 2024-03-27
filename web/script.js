var slide = document.getElementsByClassName('slide');
var dot = document.getElementsByClassName('dot');
var prev = document.querySelector('.prev');
var next = document.querySelector('.next');
var n = 0;
var i;
var a=0;
function disno(){
    for( i = 0 ; i<slide.length ; i++){
        slide[i].style.display = 'none';
    }
}

function no_active(){
    for( i = 0 ; i<dot.length ; i++){
        dot[i].classList.remove('active');
    }
}

next.addEventListener('click',function(e){
    e.preventDefault();
    n++;
    if( n > slide.length - 1){ // length starts From 1
        n = 0; // Arrays Starts From zero
    }
    disno();
    no_active()
    slide[n].style.display = 'block';
    dot[n].classList.add('active');
})

prev.addEventListener('click',function(e){
    e.preventDefault();
    n--;
    if( n < 0){ // length starts From 1
        n = slide.length - 1; // Arrays Starts From zero
    }
    disno();
    no_active()
    slide[n].style.display = 'block';
    dot[n].classList.add('active');
})

setInterval(function(){
    n++;
    if( n > slide.length - 1){ // length starts From 1
        n = 0; // Arrays Starts From zero
    }
    disno();
    no_active()
    slide[n].style.display = 'block';
    dot[n].classList.add('active');
},3000)





function email_footer(){
    var input = document.getElementById('fname');
    var t = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if(!(t.test(input.value))){
        alert("invalid email");
    }

}



function email_reg(){
    a++;
    var em = document.getElementById('e');
    var te = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if(!(te.test(em.value))){
        alert("invalid email");
    }

}





function cp(){
    a++;
    var i = document.getElementById('p1');
    var i1 = document.getElementById('p2');
    if(i.value!==i1.value){
        alert("The passwords entered are not the same");
    }
  
  }




  function p(){
    a++;
    var p = document.getElementById('p1');
    var pt = /^(?=.*[A-Za-z])(?=.*\d)[a-zA-Z\d\w\W]{6,}$/;
    if(!(pt.test(p.value))){
        alert("Your password must consist of letters and numbers and at least 6 characters");
    }
  
  }



  function ne(){
    var n = document.getElementById('n');
    var e = document.getElementById('e')
    if(n.value=="" || e.value==""){
        alert("Filling in the name and email fields is required");
    }
  
  }
  function onsubmit() {
    if(a>0){

    }
    if(a==0){
        document.getElementById("bt").innerHTML="<input type='submit' class='submit'>";
    }

  }



  