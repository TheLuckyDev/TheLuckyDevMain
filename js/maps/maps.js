/**
 * accedeweb-tablist - WAI-ARIA tablist plugin based on AcceDe Web accessibility guidelines
 * @version v1.0.2
 * @link http://a11y.switch.paris/
 * @license ISC
 */
!function(e,t,a){"use strict";var n=function(e,a){var n=e;return this.closeTabs=function(e){var t;n.openedTab.length&&null!==n.multiselectable&&(t=Array.prototype.slice.call(n.openedTab),t.forEach(function(t){e?this.toggleDisplay(t):t.click()}.bind(this)),e||null===n.multiselectable||a.closeAll(t))},this.firstActiveTab=function(){for(var e,t=0;t<n.tabs.length;t++)if(!n.tabs[t].disabled){e=t;break}return e},this.getOpenedTabs=function(){return n.openedTab.slice()},this.handleDisplay=function(e){e.preventDefault();var a=e.currentTarget;a.disabled||(a!==t.activeElement&&a.focus(),this.toggleDisplay(a))},this.handleFocus=function(e){var t=e.currentTarget;t.disabled||(n.currentTabIndex=n.tabs.indexOf(t),this.select(n.tabs[n.currentTabIndex]))},this.handlePanel=function(e){switch(void 0===n.currentTabIndex&&this.handlePanelFocus(e),e.keyCode){case 33:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex-1));break;case 34:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex+1));break;case 38:e.ctrlKey&&(e.preventDefault(),this.switchTab(n.currentTabIndex))}},this.handlePanelFocus=function(e){if(e.target.doubleFocus)return e.preventDefault(),void delete e.target.doubleFocus;var t,a=e.currentTarget;t=a.tab,n.currentTabIndex=n.tabs.indexOf(t),["radio","checkbox"].indexOf(e.target.type)>=0&&(e.target.doubleFocus=!0)},this.handleTab=function(e){switch(void 0===n.currentTabIndex&&this.handleFocus(e),e.keyCode){case 32:case 13:this.handleDisplay(e);break;case 35:e.preventDefault(),this.switchTab(n.tabs.length-1);break;case 36:e.preventDefault(),this.switchTab(this.firstActiveTab());break;case 37:case 38:e.preventDefault(),this.switchTab(n.currentTabIndex-1);break;case 39:case 40:e.preventDefault(),this.switchTab(n.currentTabIndex+1)}},this.init=function(){if(!e||!e.nodeName)throw new Error("No DOM node provided. Abort.");a={closeAll:a&&a.closeAll||this.noop,closeTab:a&&a.closeTab||this.noop,openTab:a&&a.openTab||this.noop},this.setTablist()},this.noop=function(){},this.select=function(e){var t;n.tabs.forEach(function(a){t=e===a,a.setAttribute("aria-selected",t),a.setAttribute("tabindex",t?0:-1),t&&null===n.multiselectable&&this.toggleDisplay(a)}.bind(this))},this.setTablist=function(){var e,a,i;n.tabs=[],n.tabPanels=[],n.openedTab=[],n.multiselectable=n.attributes["aria-multiselectable"]?"true"===n.attributes["aria-multiselectable"].value:null,Array.prototype.forEach.call(n.querySelectorAll("[role=tab]"),function(s){if(a=!1,e=s.getAttribute("aria-controls"),e?s.tabPanel=t.getElementById(e):s.nextElementSibling&&s.nextElementSibling.getAttribute("aria-labelledby")===s.id&&(s.tabPanel=s.nextElementSibling),!s.tabPanel)throw new Error("Could not find associated tabpanel for tab "+s.id+'. Use [aria-controls="tabpanelId"] on the [role=tab] element to link them together');s.tabPanel.tab=s,s.tabList=n,s.disabled=s.hasAttribute("disabled")||"true"===s.getAttribute("aria-disabled"),s.hasAttribute("data-tab-open")&&!s.disabled&&(!n.multiselectable&&!n.openedTab.length||n.multiselectable)&&(n.openedTab.push(s),a=!0),s.removeAttribute("data-tab-open"),i||s.disabled||(i=s),s.setAttribute("tabindex",-1),s.setAttribute("aria-expanded",a),s.tabPanel.setAttribute("aria-hidden",!a),n.tabs.push(s),n.tabPanels.push(s.tabPanel),s.addEventListener("click",this.handleDisplay.bind(this)),s.addEventListener("focus",this.handleFocus.bind(this)),s.addEventListener("keydown",this.handleTab.bind(this)),s.tabPanel.addEventListener("focus",this.handlePanelFocus.bind(this)),s.tabPanel.addEventListener("keydown",this.handlePanel.bind(this))}.bind(this)),n.tabsLength=n.tabs.length,n.tabPanelsLength=n.tabPanels.length,n.openedTab.length?n.openedTab[0].setAttribute("tabindex",0):n.openedTab.length||null!==n.multiselectable?i.setAttribute("tabindex",0):(i.setAttribute("tabindex",0),i.setAttribute("aria-expanded",!0),i.tabPanel.setAttribute("aria-hidden",!1),n.openedTab.push(i))},this.switchTab=function(e){var t;if(n.tabs[e]&&n.tabs[e].disabled)return t=e>n.currentTabIndex?e+1:e-1,void this.switchTab(t);n.currentTabIndex=e,n.currentTabIndex<this.firstActiveTab()?n.currentTabIndex=n.tabsLength-1:n.currentTabIndex>=n.tabsLength&&(n.currentTabIndex=this.firstActiveTab()),n.tabs[n.currentTabIndex].focus()},this.toggleDisplay=function(e){var t,i,s;if(t=e.tabPanel,i="true"===e.getAttribute("aria-expanded"),null===n.multiselectable){if(i)return;a.closeTab(n.openedTab[0])}i?(s=n.openedTab.indexOf(e),n.openedTab.splice(s,1),a.closeTab(e)):(n.multiselectable||(n.openedTab.forEach(function(e){e.setAttribute("aria-expanded",!1),e.tabPanel.setAttribute("aria-hidden",!0),a.closeTab(e)}),n.openedTab.length=0),n.openedTab.push(e),a.openTab(e)),e.setAttribute("aria-expanded",!i),t.setAttribute("aria-hidden",i)},this.init(),{closeAll:this.closeTabs,openedTab:this.getOpenedTabs}};"function"==typeof define&&define.amd?define(function(){return n}):"undefined"!=typeof module&&module.exports?module.exports=n:e.Tablist=n}(window,document);

var dragSrcEl = null;
var valeur ="";

function handleDragStart(e) {
  // Target (this) element is the source node.
  dragSrcEl = this;
  valeur = this.childNodes[1].firstChild.value;
  e.dataTransfer.effectAllowed = 'move';
  e.dataTransfer.setData('text/html', this.outerHTML);

  this.classList.add('dragElem');
}
function handleDragOver(e) {
  if (e.preventDefault) {
    e.preventDefault(); // Necessary. Allows us to drop.
  }
  this.classList.add('over');

  e.dataTransfer.dropEffect = 'move';  // See the section on the DataTransfer object.

  return false;
}

function handleDragEnter(e) {
  // this / e.target is the current hover target.
}

function handleDragLeave(e) {
  this.classList.remove('over');  // this / e.target is previous target element.
}

function handleDrop(e) {
  // this/e.target is current target element.

  if (e.stopPropagation) {
    e.stopPropagation(); // Stops some browsers from redirecting.
  }

  // Don't do anything if dropping the same column we're dragging.
  if (dragSrcEl != this) {
    // Set the source column's HTML to the HTML of the column we dropped on.
    //alert(this.outerHTML);
    //dragSrcEl.innerHTML = this.innerHTML;
    //this.innerHTML = e.dataTransfer.getData('text/html');
    this.parentNode.removeChild(dragSrcEl);
    var dropHTML = e.dataTransfer.getData('text/html');
    this.insertAdjacentHTML('beforebegin',dropHTML);
    var dropElem = this.previousSibling;
    addDnDHandlers(dropElem);

    
  }
   this.classList.remove('over');
   return false;
}

function handleDragEnd(e) {
  // this/e.target is the source node.
  var idN;
  this.classList.remove('over');
  
  addEvntInput();
  setLabelAdresse();
  idN = this.childNodes[1].firstChild.id;
  $("#"+idN).val(valeur);
}

function setLabelAdresse(){
	var cols = document.querySelectorAll('#adresseList .column');
	var btns = document.querySelectorAll('#adresseList .removeBtn');
	for (var i = 0; i < btns.length; i++) {
		btns[i].remove();
	}
	for (var i = 0; i < cols.length; i++) {
		if(i==0){
			cols[i].childNodes[0].innerText = "Départ";
			if(cols[i].querySelector('removeBtn')){
				document.querySelector('removeBtn').remove();
			}
		}
		else if(i == cols.length-1){
			cols[i].childNodes[0].innerText = "Arrivée";
			if(cols[i].querySelector('removeBtn')){
				document.querySelector('removeBtn').remove();
			}
		}
		else{
			cols[i].childNodes[0].innerText = "Etape "+parseInt(i-1);
			if(!cols[i].querySelector('removeBtn')){
				var node = document.createElement("button");  
				node.type="button";              
				node.className = "btn btn-danger removeBtn"
				var textnode = document.createTextNode("-");         // Create a text node
				node.appendChild(textnode);
				cols[i].appendChild(node);
			}
		}
	}
}


function addDnDHandlers(elem) {
  elem.addEventListener('dragstart', handleDragStart, false);
  elem.addEventListener('dragenter', handleDragEnter, false)
  elem.addEventListener('dragover', handleDragOver, false);
  elem.addEventListener('dragleave', handleDragLeave, false);
  elem.addEventListener('drop', handleDrop, false);
  elem.addEventListener('dragend', handleDragEnd, false);
}


function removeBtnFunc(){
  $(this).parent().remove();
  x = parseInt(x-1);
  setLabelAdresse();
  var rmBtn = document.getElementsByClassName('removeBtn');
	Array.prototype.forEach.call(rmBtn, function(element){
		element.addEventListener('click', removeBtnFunc);

	});
}