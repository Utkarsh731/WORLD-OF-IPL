var lc,rc,p1,p2,c1=0,c2=0;
/*var scores;
scores=[0,0]
function func1(){
alert(document.getElementById('l11').value;)
}
if(document.getElementById('l11').checked)
    {
        alert("Its checkd");
        lc = document.getElementById("l1");
        lc.classList.remove("visible");
        p1 = document.getElementById('l11').value;
        p2 = document.getElementById('r11').value;
        if(p1>p2)
            {
                scores[0] = scores[0]+1;
                document.getElementByid('score-0').textContent = scores[0];
            }
        else
        {
            scores[1] = scores[1] +1;
            document.getElementByid("score-1").textContent = scores[1];
        }
    }
*/
document.getElementById("l1").addEventListener("click",function(){
    lc = document.getElementById("l1");
    alert("its clicked");
    rc = document.getElementById("r1");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l2").addEventListener("click",function(){
    lc = document.getElementById("l2");
    rc = document.getElementById("r2");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l3").addEventListener("click",function(){
    lc = document.getElementById("l3");
    rc = document.getElementById("r3");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l4").addEventListener("click",function(){
    lc = document.getElementById("l4");
    rc = document.getElementById("r4");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l5").addEventListener("click",function(){
    lc = document.getElementById("l5");
    rc = document.getElementById("r5");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l6").addEventListener("click",function(){
    lc = document.getElementById("l6");
    rc = document.getElementById("r6");
    lc.classList.add("visible");
    rc.classList.add("visible");
});

document.getElementById("l11").addEventListener("click",function(){
    lc = document.getElementById("l11");
    rc = document.getElementById("r11");
    p1 = lc.value;
    p2 = rc.value;
    if(p1 > p2)
    {
        c1 = c1+1;
        document.getElementByid("score-0").textContent = c1;
    }
    else
    {
        c2 = c2 +1;
        document.getElementByid("score-1").textContent = c2;
    }
});
