/**
 * accedeweb-tablist - WAI-ARIA tablist plugin based on AcceDe Web accessibility guidelines
 * @version v1.0.2
 * @link http://a11y.switch.paris/
 * @license ISC
 */
 !function(e,t,a){"use strict";var n=function(e,a){var n=e;return this.closeTabs=function(e){var t;n.openedTab.length&&null!==n.multiselectable&&(t=Array.prototype.slice.call(n.openedTab),t.forEach(function(t){e?this.toggleDisplay(t):t.click()}.bind(this)),e||null===n.multiselectable||a.closeAll(t))},this.firstActiveTab=function(){for(var e,t=0;t<n.tabs.length;t++)if(!n.tabs[t].disabled){e=t;break}return e},this.getOpenedTabs=function(){return n.openedTab.slice()},this.handleDisplay=function(e){e.preventDefault();var a=e.currentTarget;a.disabled||(a!==t.activeElement&&a.focus(),this.toggleDisplay(a))},this.handleFocus=function(e){var t=e.currentTarget;t.disabled||(n.currentTabIndex=n.tabs.indexOf(t),this.select(n.tabs[n.currentTabIndex]))},this.handlePanel=function(e){switch(void 0===n.currentTabIndex&&this.handlePanelFocus(e),e.keyCode){case 33:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex-1));break;case 34:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex+1));break;case 38:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex))}},this.handlePanelFocus=function(e){if(e.target.doubleFocus)return e.preventDefault(),void delete e.target.doubleFocus;var t,a=e.currentTarget;t=a.tab,n.currentTabIndex=n.tabs.indexOf(t),["radio","checkbox"].indexOf(e.target.type)>=0&&(e.target.doubleFocus=!0)},this.handleTab=function(e){switch(void 0===n.currentTabIndex&&this.handleFocus(e),e.keyCode){case 32:case 13:this.handleDisplay(e);break;case 35:e.preventDefault(),this.switchTab(n.tabs.length-1);break;case 36:e.preventDefault(),this.switchTab(this.firstActiveTab());break;case 37:case 38:e.preventDefault(),this.switchTab(n.currentTabIndex-1);break;case 39:case 40:e.preventDefault(),this.switchTab(n.currentTabIndex+1)}},this.init=function(){if(!e||!e.nodeName)throw new Error("No DOM node provided. Abort.");a={closeAll:a&&a.closeAll||this.noop,closeTab:a&&a.closeTab||this.noop,openTab:a&&a.openTab||this.noop},this.setTablist()},this.noop=function(){},this.select=function(e){var t;n.tabs.forEach(function(a){t=e===a,a.setAttribute("aria-selected",t),a.setAttribute("tabindex",t?0:-1),t&&null===n.multiselectable&&this.toggleDisplay(a)}.bind(this))},this.setTablist=function(){var e,a,i;n.tabs=[],n.tabPanels=[],n.openedTab=[],n.multiselectable=n.attributes["aria-multiselectable"]?"true"===n.attributes["aria-multiselectable"].value:null,Array.prototype.forEach.call(n.querySelectorAll("[role=tab]"),function(s){if(a=!1,e=s.getAttribute("aria-controls"),e?s.tabPanel=t.getElementById(e):s.nextElementSibling&&s.nextElementSibling.getAttribute("aria-labelledby")===s.id&&(s.tabPanel=s.nextElementSibling),!s.tabPanel)throw new Error("Could not find associated tabpanel for tab "+s.id+'. Use [aria-controls="tabpanelId"] on the [role=tab] element to link them together');s.tabPanel.tab=s,s.tabList=n,s.disabled=s.hasAttribute("disabled")||"true"===s.getAttribute("aria-disabled"),s.hasAttribute("data-tab-open")&&!s.disabled&&(!n.multiselectable&&!n.openedTab.length||n.multiselectable)&&(n.openedTab.push(s),a=!0),s.removeAttribute("data-tab-open"),i||s.disabled||(i=s),s.setAttribute("tabindex",-1),s.setAttribute("aria-expanded",a),s.tabPanel.setAttribute("aria-hidden",!a),n.tabs.push(s),n.tabPanels.push(s.tabPanel),s.addEventListener("click",this.handleDisplay.bind(this)),s.addEventListener("focus",this.handleFocus.bind(this)),s.addEventListener("keydown",this.handleTab.bind(this)),s.tabPanel.addEventListener("focus",this.handlePanelFocus.bind(this)),s.tabPanel.addEventListener("keydown",this.handlePanel.bind(this))}.bind(this)),n.tabsLength=n.tabs.length,n.tabPanelsLength=n.tabPanels.length,n.openedTab.length?n.openedTab[0].setAttribute("tabindex",0):n.openedTab.length||null!==n.multiselectable?i.setAttribute("tabindex",0):(i.setAttribute("tabindex",0),i.setAttribute("aria-expanded",!0),i.tabPanel.setAttribute("aria-hidden",!1),n.openedTab.push(i))},this.switchTab=function(e){var t;if(n.tabs[e]&&n.tabs[e].disabled)return t=e>n.currentTabIndex?e+1:e-1,void this.switchTab(t);n.currentTabIndex=e,n.currentTabIndex<this.firstActiveTab()?n.currentTabIndex=n.tabsLength-1:n.currentTabIndex>=n.tabsLength&&(n.currentTabIndex=this.firstActiveTab()),n.tabs[n.currentTabIndex].focus()},this.toggleDisplay=function(e){var t,i,s;if(t=e.tabPanel,i="true"===e.getAttribute("aria-expanded"),null===n.multiselectable){if(i)return;a.closeTab(n.openedTab[0])}i?(s=n.openedTab.indexOf(e),n.openedTab.splice(s,1),a.closeTab(e)):(n.multiselectable||(n.openedTab.forEach(function(e){e.setAttribute("aria-expanded",!1),e.tabPanel.setAttribute("aria-hidden",!0),a.closeTab(e)}),n.openedTab.length=0),n.openedTab.push(e),a.openTab(e)),e.setAttribute("aria-expanded",!i),t.setAttribute("aria-hidden",i)},this.init(),{closeAll:this.closeTabs,openedTab:this.getOpenedTabs}};"function"==typeof define&&define.amd?define(function(){return n}):"undefined"!=typeof module&&module.exports?module.exports=n:e.Tablist=n}(window,document);


function angleConverter(){
	var inputEnt = $("#entreeAngle");
	var inputRes = $("#resultatAngle");
	console.log(inputEnt.val());
	if(uniteBaseAngle == 1){												//Si l'entrée est en Degrée
			if(uniteArriveAngle==1){												//Si la sortie est en degrée
				inputRes.val(inputEnt.val());
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				inputRes.val(inputEnt.val()*(10/9));
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular Mil
				inputRes.val(inputEnt.val() * ((Math.PI/180) / (Math.PI/3200)));
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val(inputEnt.val() * (1/60));
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val(inputEnt.val() * (Math.PI/180));
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val(inputEnt.val() * (1/3600));
			}
	}else if(uniteBaseAngle == 2){										//Si l'entrée est en Grade 	
			if(uniteArriveAngle==1){												//Si la sortie est en degrée
				inputRes.val(inputEnt.val() * 0.9);
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				inputRes.val(inputEnt.val());
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular mil
				inputRes.val(16 * inputEnt.val());
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val((inputEnt.val() * 0.9)*(1/60));
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val((inputEnt.val() * 0.9)* (Math.PI/180));
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val((inputEnt.val() * 0.9)*(1/3600));
			}
	}else if(uniteBaseAngle==3){											//Si la sortie est en Angular Mil
			if(uniteArriveAngle==1){												//Si la sortie est en Degrée
				inputRes.val(inputEnt.val() * (1/((Math.PI/180) / (Math.PI/3200))));
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				 inputRes.val((inputEnt.val() * (1/((Math.PI/180) / (Math.PI/3200))))*(10/9));
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular Mil
				inputRes.val(inputEnt.val());
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val((inputEnt.val() * (1/((Math.PI/180) / (Math.PI/3200))))*(1/60));
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val((inputEnt.val() * (1/((Math.PI/180) / (Math.PI/3200))))*(Math.PI/180));
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val((inputEnt.val() * (1/((Math.PI/180) / (Math.PI/3200))))*(1/3600));
			}
	}else if(uniteBaseAngle==4){											//Si l'entrée est en Minute Arc
			if(uniteArriveAngle==1){												//Si la sortie est en Degrée
				inputRes.val(inputEnt.val()*60);
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				inputRes.val((inputEnt.val()*60)*(10/9));
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular Mil
				inputRes.val((inputEnt.val()*60)*((Math.PI/180) / (Math.PI/3200)));
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val(inputEnt.val());
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val((inputEnt.val()*60)*(Math.PI/180));
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val((inputEnt.val()*60)*(1/3600));
			}
	}else if(uniteBaseAngle==5){											//Si l'entrée est en Radian
			if(uniteArriveAngle==1){												//Si la sortie est en Degrée
				inputRes.val((inputEnt*180)/(Math.PI));
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				inputRes.val(((inputEnt*180)/(Math.PI))*(10/9));
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular Mil
				inputRes.val(((inputEnt*180)/(Math.PI)) * ((Math.PI/180) / (Math.PI/3200)));
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val(((inputEnt*180)/(Math.PI)) * (1/60));
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val(inputEnt.val());
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val(((inputEnt*180)/(Math.PI)) * (1/3600));
			}
	}else if(uniteBaseAngle==6){											//Si l'entrée est en Second Arc
			if(uniteArriveAngle==1){												//Si la sortie est en Degrée
				inputRes.val(inputEnt.val()*3600);
			}else if(uniteArriveAngle==2){										//Si la sortie est en Grade
				inputRes.val((inputEnt.val()*3600)*(10/9));
			}else if(uniteArriveAngle==3){										//Si la sortie est en Angular Mil
				inputRes.val((inputEnt.val()*3600)*((Math.PI/180) / (Math.PI/3200)));
			}else if(uniteArriveAngle==4){										//Si la sortie est en Minute Arc
				inputRes.val((inputEnt.val()*3600)*(1/60));
			}else if(uniteArriveAngle==5){										//Si la sortie est en Radian
				inputRes.val((inputEnt.val()*3600)*(Math.PI/180));
			}else if(uniteArriveAngle==6){										//Si la sortie est en Second Arc
				inputRes.val(inputEnt.val());
			}
	}
}

/*function dataByteConverter(){
	var inputEnt = $("#entreeDataByte");
	var inputRes = $("#resultatDataByte");
	console.log(inputEnt.val());
	if(uniteBaseDataByte == 1){

		if(uniteArriveDataByte == 1){
			inputRes.val(inputEnt.val());
		}else if(uniteArriveDataByte == 2){
			inputRes.val(inputEnt.val()/8);
		}else if(uniteArriveDataByte == 3){
			inputRes.val(inputEnt.val()/8);
		}

		else if(uniteArriveDataByte == 4){
			inputRes.val(inputEnt.val());
		}
		else if(uniteArriveDataByte == 5){
			inputRes.val(inputEnt.val());
		}

	}else if(uniteBaseDataByte==2){

		if(uniteArriveDataByte == 1){
			inputRes.val(inputEnt.val()*8);
		}else if(uniteArriveDataByte == 2){
			inputRes.val(inputEnt.val());
		}else if(uniteArriveDataByte == 3){
			inputRes.val(inputEnt.val());
		}

		else if(uniteArriveDataByte == 4){
			
		}
		else if(uniteArriveDataByte == 5){
			inputRes.val(inputEnt.val());
		}

	}else if(uniteBaseDataByte==3){

		if(uniteArriveDataByte == 1){
			inputRes.val(inputEnt.val()/8);
		}else if(uniteArriveDataByte == 2){
			inputRes.val(inputEnt.val());
		}else if(uniteArriveDataByte == 3){
			inputRes.val(inputEnt.val());
		}

		else if(uniteArriveDataByte == 4){
			
		}
		else if(uniteArriveDataByte == 5){
			inputRes.val(inputEnt.val());
		}

	}else if(uniteBaseDataByte==4){

		if(uniteArriveDataByte == 1){
			
		}else if(uniteArriveDataByte == 2){
			
		}else if(uniteArriveDataByte == 3){

		}
		else if(uniteArriveDataByte == 4){
			inputRes.val(inputEnt.val());
		}
		else if(uniteArriveDataByte == 5){
			inputRes.val(inputEnt.val());
		}

	}else if(uniteBaseDataByte==5){

		if(uniteArriveDataByte == 1){
			
		}else if(uniteArriveDataByte == 2){
			
		}else if(uniteArriveDataByte == 3){

		}
		else if(uniteArriveDataByte == 4){
			inputRes.val(inputEnt.val());
		}
		else if(uniteArriveDataByte == 5){
			inputRes.val(inputEnt.val());
		}
	}
}*/

