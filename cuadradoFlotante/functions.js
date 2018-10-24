var parent = document.getElementsByTagName('section')[0];
if(parent.hasChildNodes()){
    console.log("yes");
    var movingBox= parent.firstChild;
    console.log(parent.firstChild.innerHTML);
    movingBox.style.position="relative";
    movingBox.style.left="100px;"
    movingBox.innerHtml="MovingBox";
    
} else{
    console.log("nope");
}  
        
        

        
        
    
