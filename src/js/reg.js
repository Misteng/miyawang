        (function(){
            let username = document.querySelector('#user');
			let password = document.querySelector('#pwd');
			let btnReg = document.querySelector('button');
            console.log(btnReg);
			let status = [200,304];

			let isok = false;

			// 获取用户名/密码
			
			// 注册
			btnReg.onclick = function(){
				if(!isok){
					return false;
				}
                
				
				let _username = username.value;
				var _password = password.value;
				let xhr = new XMLHttpRequest();
				xhr.onload = ()=>{
					if(status.indexOf(xhr.status) >= 0){
                        console.log(xhr.responseText);
                        if(xhr.responseText === 'success'){
                            //跳转到登录页面
                            location.href = "../html/login.html";
                        }else if(xhr.responseText === 'file'){
                            nothing.innerHTML = '注册失败，请重新注册';
                        }
					}
				}
				xhr.open('post','../api/reg.php',true);

				// 设置请求头，以便后端接收post数据
				xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');


				xhr.send(`username=${_username}&password=${_password}`);
			}


			// 验证用户名是否存在
			let error = document.querySelector('.error');
			username.onblur = ()=>{
				let _username = username.value;
				if(!/^1[3-9]\d{9}$/.test(_username)){
					error.innerText = '';
                    error.innerText = '请输入11位的手机号';
                    return false;
				}
				
                password.value = '';
				// let _username = username.value;

				let xhr = new XMLHttpRequest();
				
				xhr.onload = ()=>{
					if(status.indexOf(xhr.status) >= 0){
						var formGroup = username.parentNode;
						if(xhr.responseText === 'yes'){
							isok = true;

							// 成功：添加has-success类
							formGroup.classList.remove('has-error');
							formGroup.classList.add('has-success');
							username.nextElementSibling.innerText = '';
						}else if(xhr.responseText === 'no'){
							isok = false;
							formGroup.classList.remove('has-success');
							formGroup.classList.add('has-error');
							username.nextElementSibling.innerText = '用户名已存在';
						}
					}
				}
				xhr.open('get','../api/check_username.php?username='+_username,true);
				xhr.send();

			}
			let error1 = document.querySelector('.error1');
			password.onblur = ()=>{
				if(!/^\S{6,20}$/.test(password)){
					error.innerText = '';
					error.innerText = '密码不能为空';
					return false;
				}
			}
        })()