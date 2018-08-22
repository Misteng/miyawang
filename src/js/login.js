(function(){
    let username = document.querySelector('#user');
    let password = document.querySelector('#pwd');
    let btnReg = document.querySelector('button');
    let nothing = document.querySelector('.nothing');
    nothing.style.color = 'red';
    nothing.style.fontSize = '12px';
   
    let status = [200,304];
    
    btnReg.onclick = ()=>{

        let _username = username.value;
        let _password = password.value;

        let xhr = new XMLHttpRequest();

        xhr.onload = ()=>{
            if(status.indexOf(xhr.status) >= 0){
                
                if(xhr.responseText == 'yes'){
                    location.href = "../index.html";

                }else if(xhr.responseText == 'no'){
                    
                    nothing.innerText = '输入的用户名或密码错误';
                    password.value = '';
                }
            }
        }

        xhr.open('post','../api/login.php',true);

        //请求头
        xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

        xhr.send(`username=${_username}&password=${_password}`);
    }    
})()