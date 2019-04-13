window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("logo-image").style.width = "60px";
    document.querySelector('.navbar-lewagon').style.backgroundColor = '#343c4c';
  } else {
    document.getElementById("logo-image").style.width = "100px";
    document.querySelector('.navbar-lewagon').style.backgroundColor = 'transparent'
  }
}
