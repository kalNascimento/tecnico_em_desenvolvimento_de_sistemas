let tittle = document.getElementById('tittle');
let menu = document.getElementById('menu');
let start = document.getElementById('start');
let nave = {
    id: document.getElementById("nave"),
    top: document.getElementById("nave").offsetTop,
    left: document.getElementById("nave").offsetLeft,
    hp: 2,
    shoot: {
        id: document.getElementById("shoot"),
        top: document.getElementById("nave").offsetTop,
        left: (document.getElementById("nave").offsetLeft + 27),
        ball: false
    }
}

RenderingAlien(16);
document.body.addEventListener('keypress', function main(event) {
    const key = event.key;

    if(key){
        MoveNave(key)
    }

    if(key === 'Enter'){
        menu.style.backgroundImage = "none";
        menu.style.backgroundColor = 'black';
        tittle.style.opacity = '0';
        nave.id.style.opacity = '1';
        StartGame();
        AlienShoot();
    }    

    if(key === ' '){
        Shooting();
    }
    
    if(nave.hp === 0){
        nave.id.style.display = 'none';
    }
});

// Function
function StartGame(){
    for(i=1; i<= 16; i++){
        let show  = document.getElementById(`alien${i}`)
        show.style.display = 'block';
    }
}


function sleep(ms) {
    return new Promise(
    resolve => setTimeout(resolve, ms)
    );
}


function ShootingAction(){ 
    nave.shoot.id.style.display = 'block';
    nave.shoot.id.style.top = `${nave.shoot.top -= 20}px`;
    nave.shoot.ball = true;
}


async function Shooting() {
    if(nave.shoot.ball === false){
        nave.shoot.id.style.left = `${nave.shoot.left = (nave.left + 27)}px`;
        while(nave.shoot.top >= 0){
            ShootingAction();
            explode();
            await sleep(50);
        }
        if(nave.shoot.top <= 0){
            nave.shoot.id.style.display = `none`
            nave.shoot.top = 650;
            nave.shoot.ball = false;
        }
    }
}


function MoveNave(keyPress) {
    switch (keyPress) {
        case 'a':
            nave.id.style.left = `${nave.left-=10}px`;
        break;

        case 'd':
            nave.id.style.left = `${nave.left+=10}px`;
        break;
    }
}


function DeathNave(alien) {
    if(alien.offsetLeft >= nave.left && alien.offsetLeft <= (nave.left + 60)){
        if(alien.offsetTop >= (nave.top - 10) && alien.offsetTop >= (nave.top + 10)){
            alien.style.display = 'none';
            alien.style.top = '78px'
            console.log(nave.hp)
            nave.hp--;
        }
    }
}


function RenderingAlien(qttd) {
    let top = 60;
    count = 0;
    for(i = 1; i <= qttd; i++){
        count++;
        let left = (48 + (8 * 4)) - (count * 8);
        let RenderAlien = {
            body: `<div class='flex-center'>
                        <p id="alien${i}shoot" class="alienshoot">&#9633;</p>
                        <div id="alien${i}" style="left: ${left}vw; top: ${top}px;"class="alien">
                            <p class="alienturbina">&#9633;</p>
                            <p class="alienturbina">&#9633;</p>
                            <p>&#9633;&#9633;&#9633;</p>
                            <p class="alienglass">&#9633;&#9633;</p>
                        </div>
                    </div>`
        }
        document.write(RenderAlien.body)
        alien = document.getElementById(`alien${i}shoot`)
        alien.style.left = `${left+2.3}vw`;
        alien.style.top = `${top+8}px`;
        if(i === 8){
            top = 160;
            count = 0;
        }
    }
}

async function AlienShoot() {
    while(nave.hp >= 0){
        let random = Math.floor(Math.random() * 17);
        alien = document.getElementById(`alien${random}shoot`)
        alien2 = document.getElementById(`alien${random}`)
        if(alien === null){
            console.log(alien)
            alien = document.getElementById(`alien${random + 1}shoot`)
        }else {
            while(alien.offsetTop <= 700 && nave.hp >= 0 && alien2.style.display != 'none'){
                alien.style.display = 'block';
                alien.style.top = `${alien.offsetTop += 20}px`;
                DeathNave(alien);
                await sleep(30);
            }
            if(alien.offsetTop >= 0){
                alien.style.display = `none`
                alien.style.top = '78px'
            }
        }
    }
}


function explode() {
    for(i = 1; i <= 16; i++){
        let alien = document.getElementById(`alien${i}`);
        if(nave.shoot.left >= (alien.offsetLeft - 5) && nave.shoot.left <= (alien.offsetLeft + 65)){
            DeathAlien(alien);
        }
    }
}


function DeathAlien(alien){
    if(alien.offsetTop > 60){  
        if(nave.shoot.top > 150 && nave.shoot.top <= 240){
            alien.style.display = 'none';
            nave.shoot.top = false;
        }
    }else {
        if(nave.shoot.top > 40 && nave.shoot.top <= 150){
            alien.style.display = 'none';
            nave.shoot.top = false;
        }
    }
}