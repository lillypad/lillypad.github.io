function init(){
  try {
    document.getElementById('nav-link-contact').className = 'nav-item active';
    return true;
  } catch(error){
    throw error;
  }
}

window.onload = function(){
  try {
    init();
    return false;
  } catch(error){
    console.log(error);
    return false;
  }
};
