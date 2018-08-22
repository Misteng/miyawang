
    //公式：left = index*banner.clientWidth
        document.addEventListener('DOMContentLoaded',function(){

            let banner = document.querySelector('#banner');
            let ul = banner.children[0];

            //初始化
            let idx = 0;
            
            //把第一张复制到最后
            ul.appendChild(ul.children[0].cloneNode(true));

            let len = ul.children.length;

            //设置ul宽度，达到水平排列的效果
            ul.style.width = banner.clientWidth * len + 'px';

            //添加分页
            let page = document.createElement('div');
            page.className = 'page';
            for(var i = 0;i<len-1;i++){
                let span = document.createElement('span');
                span.innerText = i + 1;
                if(i==idx){
                    span.className = 'active';
                }
                page.appendChild(span);
            }
            banner.appendChild(page);

            // //生成添加上一张和下一张
            // let btnNext = document.createElement('span');
            // btnNext.className = 'btn-next';
            // btnNext.innerHTML = '&gt;';

            // let btnPrev = document.createElement('span');
            // btnPrev.className = 'btn-prev';
            // btnPrev.innerHTML = '&lt;';
            // banner.appendChild(btnPrev);
            // banner.appendChild(btnNext);
            
            //定时器
            let timer = setInterval(autoPlay,3000);
                

            //移入移出，清除轮播效果
            banner.onmouseover = function(){
                clearInterval(timer);
            }
            banner.onmouseout = function(){
                timer = setInterval(autoPlay,3000)
            }
            
            // //添加分页效果
            banner.onclick = e=>{
                if(e.target.parentNode.className === 'page'){
                    //修改idx值为当前分页数字-1
                    idx = e.target.innerText - 1;
                    show();
                }
                // //上一张，下一张
                // else if(e.target.className === 'btn-prev'){
                //     idx--;
                //     show();
                // }else if(e.target.className === 'btn-next'){
                //     idx++;
                //     show();
                // }
            }

            function autoPlay(){
                //自增
                idx++;
                show();
                
            }

            function show(){
                //判断无缝连接的点
                if(idx >= len){
                    ul.style.left = 0;
                    idx = 1;
                }else if(idx<0){
                    idx = len-2;
                }

                animate(ul,{left:-idx * banner.offsetWidth});

                //循环高亮
                for(let i=0;i<len-1;i++){
                    //干掉全部高亮
                    page.children[i].className = '';
                }
                if(idx === len-1){
                    page.children[0].className = 'active';
                }else{
                    page.children[idx].className = 'active';
                }
            }
             
        })


