// Cookie.remove('goodslist');
jQuery($=>{
    let $car4 = $('.car4');
    let $car5 = $('.car5');

    var goodslist = Cookie.get('goodslist');//'[{}]',''

		if(goodslist.length<=0){
			goodslist = [];
		}else{
			goodslist = JSON.parse(goodslist);
		}


		render();

		// 清空购物车
		// 删除goodslist这个cookie
		$('.delgoods')[0].onclick = function(e){
			// 清空cookie
			Cookie.remove('goodslist');

			// 清空goodslist数组
			// goodslist = [];

			render();


			e.preventDefault();

			// 手动刷新页面
			location.reload()
		}

		// 删除单个商品
		// * 找出删除的商品 -> 从数组中移除 -> 重写cookie -> 渲染页面
		$('.car4')[0].onclick = function(e){
			e = e || window.event;

			var target = e.target || e.srcElement;

			// 判断是否点击了按钮
			if(target.innerHTML === '删除'){
				// 获取当前li
				var currentLi = target.parentNode;

				// 获取当前商品的guid
				var id = currentLi.getAttribute('data-id');

				// 找出数组中对应商品并移除
				for(var i=0;i<goodslist.length;i++){
					if(goodslist[i].id === id){
						goodslist.splice(i,1);
						break;
					}
				}

				// 重写cookie
				Cookie.set('goodslist',JSON.stringify(goodslist));

				// 重新渲染页面
				render();
			}
		}

		function render(){

			// 根据数据生成html结构
			// var ul = document.createElement('ul');

			// 计算总价
            var total = 0;
            //计算数量
            var q = 0;
            $('.car4')[0].innerHTML = '';
			$('.car4')[0].innerHTML = goodslist.map(function(goods){
				// 计算总价
				total += goods.price * goods.qty;
                q += goods.qty;
				return `<li data-id=${goods.id}>
                    <input type="checkbox">
                    <img src="${goods.imgurl}">
                    <span class="nick">${goods.name}</span>
                    <span class="changgui">常规</span>
                    <span class="newprice1">${goods.price}</span>
                    <del class="overprice">${goods.overprice}</del>
                    <span class="shuliang1">&times;${goods.qty}</span>
                    <span class="total1">￥${goods.price*goods.qty}</span>
                    <span class="clone">删除</span>
                </li>`
                
			}).join('');

			// // 把ul写入页面#carList
			// oCarList.innerHTML = '';
			// oCarList.appendChild(ul);
            $('.shuliang').html(q);
            $('.newprice').html('￥'+total);
			// 写入总价
			// oSubPrice.innerHTML = total.toFixed(2);
		}
	
})