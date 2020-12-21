 tinymce.init({
    selector:'textarea',
          
    plugins: 'advlist anchor autolink autoresize autosave bbcode charmap code codesample textcolor colorpicker contextmenu directionality emoticons media fullpage fullscreen help hr image imagetools importcss insertdatetime legacyoutput link lists media  nonbreaking noneditable pagebreak paste preview print save searchreplace spellchecker tabfocus table template textcolor textpattern toc visualblocks visualchars wordcount',
          
    toolbar:'restoredraft forecolor backcolor ltr rtl emoticons save fullpage fullscreen image insertdatetime link numlist bullist media nonbreaking pagebreak paste preview print searchreplace spellchecker table template forecolor backcolor toc visualblocks visualchars',
          
    menubar:'file edit tools insert view format table',
          
    contextmenu:'link image inserttable | cell row column deletetable',
        
    spellchecker_rpc_url: 'localhost/ephox-spelling',
    spellchecker_language: 'en',
    fullpage_default_encoding: "UTF-8",
    
      //a11ychecker mediaembed layer linkchecker mentions powerpaste tinymcespellchecker
          
      //a11ycheck
     //MoxieManager               
    image_list: [
        {title: 'My image 1', value: 'https://www.tinymce.com/my1.gif'},
        {title: 'My image 2', value: 'http://www.moxiecode.com/my2.gif'}
    ],
    save_oncancelcallback: function () { alert('Save canceled'); },
    save_onsavecallback: function () { alert('Saved'); },
          
    mentions_fetch: function (query, success) {
    //Fetch your full user list from somewhere
    var users = getUserDataFromTheServer();   

    //query.term is the text the user typed after the '@'
    users = users.filter(function (user) {
      return user.name.indexOf(query.term.toLowerCase()) === 0;
    });

    users = users.slice(0, 10);

    window.setTimeout(function () {
      success(users);
    }, 0);
  }
    });