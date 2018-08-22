jQuery($=>{

    let all = document.querySelector('.all');
    // console.log(all);
    let all1 = document.querySelector('.all1');
    all.onmouseover = function(){
        all1.style.display = 'block';
    }
    all.onmouseout = function(){
        all1.style.display = 'none';
    }
    //请求数据
    $.ajax({
        url:'../api/index.php',
        dataTypae:'json',
        success:function(data){
            data = JSON.parse(data);
            
            let arr = data.slice(0,40);
            //渲染页面
            $('.listone')[0].innerHTML = arr.map(item=>{
                return `<li class="list1" data-id=${item.id}>
                        <img src="../img2/${item.imgurl}">
                        <span class="price">￥${item.newprice}</span>
                        <del class="overprice">￥${item.overprice}</del><br>
                        <span class="uname">${item.name}</span>
                    </li>`
            }).join('');
        }
    })

    //按价格排序
    $('.rankprice')[0].innerHTML = '价格';
    $('.rankprice')[0].onclick = function(){
       
        if(this.innerHTML == '价格'){
            this.innerHTML == '';
            this.innerHTML = '算了';
            $.ajax({
                url:'../api/list.php',
                dataTypae:'json',
                success:function(data){
                    data = JSON.parse(data);
                    
                    let arr = data.slice(0,40);
                    //渲染页面
                    $('.listone')[0].innerHTML = arr.map(item=>{
                        return `<li class="list1" data-id=${item.id}>
                                <img src="../img2/${item.imgurl}">
                                <span class="price">￥${item.newprice}</span>
                                <del class="overprice">￥${item.overprice}</del><br>
                                <span class="uname">${item.name}</span>
                            </li>`
                    }).join('');
                }
            })
            
        }
        if(this.innerHTML== '算了'){
            $.ajax({
                url:'../api/index.php',
                dataTypae:'json',
                success:function(data){
                    data = JSON.parse(data);
                    
                    let arr = data.slice(0,40);
                    //渲染页面
                    $('.listone')[0].innerHTML = arr.map(item=>{
                        return `<li class="list1" data-id=${item.id}>
                                <img src="../img2/${item.imgurl}">
                                <span class="price">￥${item.newprice}</span>
                                <del class="overprice">￥${item.overprice}</del><br>
                                <span class="uname">${item.name}</span>
                            </li>`
                    }).join('');
                }
            })
            this.innerHTML = '价格';
        }
    }
    //时间排序
    $('.ranktime')[0].innerHTML = '时间';
    $('.ranktime')[0].onclick = function(){
       
        if(this.innerHTML == '时间'){
            this.innerHTML == '';
            this.innerHTML = 'no';
            $.ajax({
                url:'../api/list-time.php',
                dataTypae:'json',
                success:function(data){
                    data = JSON.parse(data);
                    
                    let arr = data.slice(0,40);
                    //渲染页面
                    $('.listone')[0].innerHTML = arr.map(item=>{
                        return `<li class="list1" data-id=${item.id}>
                                <img src="../img2/${item.imgurl}">
                                <span class="price">￥${item.newprice}</span>
                                <del class="overprice">￥${item.overprice}</del><br>
                                <span class="uname">${item.name}</span>
                            </li>`
                    }).join('');
                }
            })
            
        }
        if(this.innerHTML== 'no'){
            $.ajax({
                url:'../api/index.php',
                dataTypae:'json',
                success:function(data){
                    data = JSON.parse(data);
                    
                    let arr = data.slice(0,40);
                    //渲染页面
                    $('.listone')[0].innerHTML = arr.map(item=>{
                        return `<li class="list1" data-id=${item.id}>
                                <img src="../img2/${item.imgurl}">
                                <span class="price">￥${item.newprice}</span>
                                <del class="overprice">￥${item.overprice}</del><br>
                                <span class="uname">${item.name}</span>
                            </li>`
                    }).join('');
                }
            })
            this.innerHTML = '时间';
        }
    }

    //吸顶菜单
    window.onscroll = function(){

        if(window.scrollY >= 504){
            $('.rank')[0].classList.add('fixed5');
            $('.option')[0].classList.add('msg');
        } else {
            $('.rank')[0].classList.remove('fixed5');
            $('.option')[0].classList.remove('msg');
        }
    }
})