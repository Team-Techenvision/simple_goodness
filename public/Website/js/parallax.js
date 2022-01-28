var $win = $(window);
var $doc = $(document);
var $body = $("body");

var parallax = function(pageType,bgImgSelector,ContrH,parallaxEffSpeed){
	var backImages = [];
	var backImageYPos = [];
	var pages = [];
	var $currentPage;
	var totalPages = 0;
	var currentSectionId = -1;
	var isSectionMovementBusy = false;
	var counter = 0;
	var sectionContrH = (typeof(ContrH)=='undefined')? 5650:ContrH;
	var pageType = (typeof(pageType)=='undefined')? "home":pageType;
	var bgImgSelector = (typeof(bgImgSelector)=='undefined')? "img.home_bg":bgImgSelector; //log(bgImgSelector);
	var parallaxEffSpeed = (typeof(parallaxEffSpeed)=='undefined')? -0.6:parallaxEffSpeed; 
	var sectionH = Math.round(sectionContrH/6);
	var currentPage = 0;
	
	var scrollHandler = function(){
		var scrollTop = $win.scrollTop();
		var winHeight = $win.height();
		for(var x =0; x<totalPages; x++){
			var $page = $(pages[x]);

			var yPos = -scrollTop + $page.offset().top;
			
			var offsetCoords = $page.offset(), topOffset = offsetCoords.top;
			
			if((scrollTop + winHeight) > (topOffset) && (topOffset + $page.height() > scrollTop)){
				//if(x==1)console.log(x,yPos);
				if(yPos < winHeight/2 && yPos > -winHeight/2)currentPage = x;
				//var perc = (x==0)?($win.scrollTop() / ($page.offset().top+1)):($win.scrollTop() / $page.offset().top);	
				//log($win.scrollTop()  + " : " + backImageYPos[1])
				/*
				if(isSectionMovementBusy == false){
					if(x==0){
						if($win.scrollTop() < backImageYPos[1] * 0.3){
							//log('first page');
							currentSectionId = 0;
						}
					}else{
						var perc = ($win.scrollTop() - backImageYPos[x-1])/(backImageYPos[x] - backImageYPos[x-1]);
						if(perc > 0.56 && perc < 1.58){
							//log('show page ' + x);
							currentSectionId = x;
						}
					}
				}
*/
				
				var imageYPos = backImageYPos[x] + yPos * -0.2;//parallaxEffSpeed;
				if(imageYPos <= backImageYPos[x]) imageYPos = backImageYPos[x]
				var $bckImage = $(backImages[x]);
				$bckImage.css({
					'top':imageYPos + 'px'
				});

			}
			
			$('[data-type="parallaxObj"]', $page).each(function(){
				var $self = $(this); // console.log($self);
				var targetY = parseInt($self.attr('data-y'));
				var speed = parseFloat($self.attr('data-speed'));
				
				$self.css({top: (targetY + yPos*speed)+'px'})
			});
			
			$('[data-type="parallaxObjX"]', $page).each(function(){
				var $self = $(this);
				var targetY = parseInt($self.attr('data-x'));
				var speed = parseFloat($self.attr('data-speed'));
				
				$self.css({left: (targetY + yPos*speed)+'px'})
			});	
			
			$('[data-type="sprite"]', $page).each(function(){
				var $self = $(this);
				var targetY = 0;//$self.attr('data-y');
				var speedY = parseFloat($self.attr('data-speed'));
				//if(!isiPad) 
				$self.css({marginTop: (yPos*speedY)+'px'});//, left: _spriteXPos+'px'});
				//$self.css({'-webkit-transform': 'translateY('+(yPos*speedY)+'px)'});/// (yPos*speedY)+'px'});//, left: _spriteXPos+'px'});
			});	
			
			
		}
		
		if(window.currentSection !== currentPage){
			window.currentSection = currentPage;
			if(window.onSectionUpdate)window.onSectionUpdate();
			//console.log(window.currentSection);
		}
	}
	
	this.scroll = function(){
		scrollHandler();
	}
	
	this.init = function(context){
		var setup = function(){
			
			backImages = $(bgImgSelector).each(function(index, element) {
				
                backImageYPos.push(parseInt($(this).css('top')));
            });;
			pages = $('section').each(function(index, element) {
                $(this).data('index',index);
            });
			
			$('[data-type="parallaxObjX"]').each(function(){
				$(this).attr('data-x', parseInt($(this).css('left')));
			});	
			$('[data-type="parallaxObj"]').each(function(){
				$(this).attr('data-y', parseInt($(this).css('top')));
			});
				
			totalPages = pages.length;
			$currentPage = $(pages[0]);
			$win.bind('scroll', function(event){
				event.preventDefault();
				scrollHandler();
				});
			scrollHandler();
			
			//mouse wheel event
			/*if(pageType == "home"){
				$('body').bind('mousewheel', function(event, delta) {

					
					if(isSectionMovementBusy == true) return false;
					event.preventDefault();
				
					
					if(delta > 0){
						currentSectionId--;		
					}else{
						currentSectionId++;
					}
					
					if(currentSectionId < 0) {
						currentSectionId = 0;
						return false;
					}
					if(currentSectionId > totalPages) {
						currentSectionId = totalPages;
						return false;
					}	
					
					//log(delta + " : " + currentSectionId)
					
					var yPos = 0;
					
					if(currentSectionId == totalPages)yPos = $(document).height()-$(window).height();
					else{
						yPos = $(pages[currentSectionId]).offset().top;
						
						if(pageType == "home"){
							yPos = $(pages[currentSectionId]).offset().top + $(pages[currentSectionId]).height()/2 - $(window).height()/2;
							yPos = (yPos < 200) ? 0 : yPos;
							if(currentSectionId == 1) yPos -=40;
							else if(currentSectionId == 2) yPos -=60;
							else if(currentSectionId == 3) yPos +=30;
							//else if(currentSectionId == 4) yPos +=20;
							else if(currentSectionId == 5) yPos -=20;
						}
					}
					
					isSectionMovementBusy = true;
				
					$('body,html').stop(true, false).animate({'scrollTop':yPos+'px'},1000, 'easeInOutExpo',function(){
						isSectionMovementBusy = false;
					})
					return false;
					
				});
			}*/
			
			
			
			if(pageType == "history"){
				$("nav.down_nav_btn").each(function(index){
					$(this).bind("click",function(e){
						e.preventDefault();
						currentSectionId = index+1;
						yPos = $(pages[currentSectionId]).offset().top;
						$('body,html').stop(true, false).animate({'scrollTop':yPos+'px'},1000, 'easeInOutExpo');
					});
				});
			}
			
		}
		
		
		setup();
		return context;
	}(this)
}
