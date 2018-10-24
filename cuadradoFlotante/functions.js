var boxElement = document.getElementById('movingBox');
        var move=false;
        var speed = 10, // the box will move by 10 pixels on every step
        direction = 1; // 1 moves in the positive direction; -1 vice versa
        function moveDiv(){
            move=!move;
            console.log("move= "+move);
            while(move){
                // Calculate and store some of the box coordinates:
                var boxLeftPos = boxElement.offsetLeft,
                    boxRightPos = boxLeftPos + boxElement.offsetWidth;
                // When right side of the box goes too far - change direction:
                if (boxRightPos > document.body.offsetWidth) {
                    direction = -1;
                }
                // When left side of the box goes too far - change direction:
                if (boxLeftPos < 0) {
                    direction = 1;
                }
                // Recalculate position:
                boxElement.style.left = (boxLeftPos + speed * direction) + 'px';
            
        
             }
        }

        
        
    
