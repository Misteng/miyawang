jQuery($=>{

//放大镜
    // $('.goods').lxzoom().addClass('box');
    $('.small').on('click','img',function(){
        $('.goods img').attr({
            'src':this.src,
            'data-big':this.dataset.big
        });
    }); 
    
    $('.goods').lxzoom({
        width:600,
        height:300
    }).addClass('box');

})