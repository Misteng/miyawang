
jQuery($=>{
    $.ajax({
        url:'../api/index.php',
        dataType:'json',
        success:function(data){
        //     console.log(data);
            let arr = data.slice(0,10);
        //     console.log(arr);
            $('.recommend1')[0].innerHTML = arr.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span>
                        <p class="price">拼团价： <span>￥${item.newprice}</span></p>
                        <p class="overprice">市场价： <del>￥${item.overprice}</del></p>
                    </li>`
            }).join('');

            let arr1 = data.slice(10,15);
            $('.eveyDa1')[0].innerHTML += arr1.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr2 = data.slice(15,20);
            $('.eveyDa2')[0].innerHTML += arr2.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr3 = data.slice(20,25);
            $('.eveyDa3')[0].innerHTML += arr3.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr4 = data.slice(25,30);
            $('.eveyDa4')[0].innerHTML += arr4.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr5 = data.slice(30,35);
            $('.eveyDa5')[0].innerHTML += arr5.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr6 = data.slice(35,40);
            $('.eveyDa6')[0].innerHTML += arr6.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr7 = data.slice(40,45);
            $('.eveyDa7')[0].innerHTML += arr7.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr8 = data.slice(45,50);
            $('.eveyDa8')[0].innerHTML += arr8.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr9 = data.slice(50,55);
            $('.eveyDa9')[0].innerHTML += arr9.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');

            let arr10 = data.slice(55,60);
            $('.eveyDa10')[0].innerHTML += arr10.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');
            
            let arr11 = data.slice(60,65);
            $('.eveyDa11')[0].innerHTML += arr11.map(item=>{
                return `<li data-id=${item.id}>
                        <img src="./img2/${item.imgurl}">
                        <span class="uname">${item.name}</span><br/>
                        <span class="price">￥${item.newprice}</span>
                         <del class="overprice">￥${item.overprice}</del>
                    </li>`
            }).join('');
        }
    });
    //点击li传参
    let recommend1 = document.querySelector('.recommend1');
//     let listli = recommend1.children;
//     console.log(listli);
    recommend1.onclick = function(e){
        if(e.target.className == 'LI'){
            let id = e.target.getAttribute('data-id');
            location.href = './html/tetail.html?' + id;
        }
        if(e.target.tagName == 'IMG' || e.target.tagName == 'SPAN' || e.target.tagName == 'P'){
            let id = e.target.parentNode.getAttribute('data-id');
            location.href = './html/tetail.html?' + id;
        }
    }
    //大牌列表
    let temai2 = document.querySelector('.temai2');
//     let listli = temail2.children;
    console.log(temai2);
    temai2.onclick = function(e){
        if(e.target.className == 'LI'){
            let id = e.target.getAttribute('data-id');
            location.href = './html/tetail.html?' + id;
        }
        if(e.target.tagName == 'IMG' || e.target.tagName == 'SPAN' || e.target.tagName == 'DEL'){
            let id = e.target.parentNode.getAttribute('data-id');
            location.href = './html/tetail.html?' + id;
        }
    }
})