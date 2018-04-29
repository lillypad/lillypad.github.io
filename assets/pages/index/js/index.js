function init(){
  try {
    document.getElementById('nav-link-home').className = 'nav-item active';
    var typed = new Typed('#typed', {
      stringsElement: '#typed-strings',
      typeSpeed: 25,
      loop: false
    });
    document.getElementsByClassName('typed-cursor')[0].style.display = 'none';
    return true;
  } catch(error){
    throw error;
  }
}

window.onload = function(){
  try {
    init();
  } catch(error){
    console.log(error);
    return false;
  }
};
