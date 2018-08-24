(function(){
    //点击商品跳到详情页
    //获取页面的li
    let listone = document.querySelector('.listone');
    let listli = listone.children;
    console.log(listli);
    listone.onclick = function(e){
        if(e.target.className == 'list1'){
            let id = e.target.getAttribute('data-id');
            location.href = './tetail.html?' + id;
        }
        if(e.target.tagName == 'IMG' || e.target.tagName == 'SPAN' || e.target.tagName == 'DEL'){
            let id = e.target.parentNode.getAttribute('data-id');
            location.href = './tetail.html?' + id;
        }
    }

})()