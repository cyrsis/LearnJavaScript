function popUp(menu) {
newX = window.event.x + document.body.scrollLeft
newY = window.event.y + document.body.scrollTop
  if ( menu.style.display == ""){
    menu.style.display = "none" }
  else {
    menu.style.display = ""}
    menu.style.pixelLeft = newX-5
    menu.style.pixelTop =  newY-5
}
function popmenu(menu) {
  if ( menu.style.display == ""){
    menu.style.display = "none" }
  else {
    menu.style.display = ""}
}
function pu(e){
cc=e.srcElement;
cc.style.background="#eeeeee";
}
function po(e){
cc=e.srcElement;
cc.style.background="";
}