(function(){

    //生成div
    let div = document.createElement('div');
    div.className = 'fixed';
    div.style.display = 'none';
    //生成img
    let img = document.createElement('img');
    img.src = '../img/miyaerwei.png';
    div.appendChild(img);
    document.body.appendChild(div);
 
    //获取页面元素
    let fixed2 = document.querySelector('.fixed2');
    let fixed = document.querySelector('.fixed');
    window.onscroll = function(){
        if(window.scrollY > 269){
            fixed.style.display = 'block';
            fixed2.style.display = 'block';
        }else{
            fixed.style.display = 'none';
            fixed2.style.display = 'none';
        }
    }
    //回到顶部
    let btn = document.querySelector('.gotop');
    btn.onclick = function(){
        var timer = setInterval(function(){
            var speed = Math.ceil(window.scrollY * 0.4);
            scrollBy(0,-speed);
            
            if(window.scrollY === 0){
                clearInterval(timer);
            }
        },30)
    }

    //鼠标移入
    // let all1 = document.querySelector('.all1');
    let all2 = document.querySelectorAll('.all2');
    let all20 = document.querySelector('.all20');
    // console.log(all20)
    for(let i=0;i<all2.length;i++){
        
        all2[i].onmouseover = function(){
            this.style.backgroundColor= '#fff';
            this.style.borderLeft = '3px solid #FA4B9B';
            this.style.width = '278px';
            all20.style.display = 'block';
            all20.style.top = (91*i + 61 ) + 'px';
            if(all20.style.top >= '291px'){
                all20.style.top = '291px';
            }
            if(i==0){
                all20.style.top = '61px';
            }
        }
        all2[i].onmouseout = function(){
            this.style.width = '239px';
            this.style.borderLeft = 0;
            all20.style.display = 'none';
            this.style.backgroundColor= '#ccc';
        }
    }
    //
    
    
})()