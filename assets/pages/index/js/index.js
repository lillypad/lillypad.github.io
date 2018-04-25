function init(){
  try {
    document.getElementById('nav-link-home').className = 'nav-item active';
    return true;
  } catch(error){
    console.log(error);
    return false;
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
