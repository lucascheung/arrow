window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("logo-image").style.width = "50px";
    document.querySelector('.navbar-lewagon').style.backgroundColor = '#112c3e';
  } else {
    document.getElementById("logo-image").style.width = "100px";
    document.querySelector('.navbar-lewagon').style.backgroundColor = 'transparent'
  }
}
