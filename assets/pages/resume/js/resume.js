function init(){
  try {
    document.getElementById('nav-link-resume').className = 'nav-item active';
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
