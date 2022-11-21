﻿//#region Variable, Permission Enum, Const
var docTypePermission = {
    AllowedAppendPage: "AllowedAppendPage",
    //AllowedCapture: "AllowedCapture",
    AllowedChangeDocumentType: "AllowedChangeDocumentType",
    AllowedDeletePage: "AllowedDeletePage",
    AllowedDownloadOffline: 'AllowedDownloadOffline',
    AllowedEmailDocument: 'AllowedEmailDocument',
    //AllowedExportFieldValue: 'AllowedExportFieldValue',
    AllowedHideAllAnnotation: 'AllowedHideAllAnnotation',
    AllowedReOrderPage: 'AllowedReOrderPage',
    AllowedReplacePage: 'AllowedReplacePage',
    AllowedRotatePage: 'AllowedRotatePage',
    //AllowedSearch: 'AllowedSearch',
    AllowedSeeRetrictedField: 'AllowedSeeRetrictedField',
    AllowedSplitDocument: 'AllowedSplitDocument',
    AllowedUpdateFieldValue: 'AllowedUpdateFieldValue',
    AlowedPrintDocument: 'AlowedPrintDocument'
}
var annotationPermission = {
    "AllowedSeeText": "AllowedSeeText",
    "AllowedAddText": "AllowedAddText",
    "AllowedDeleteText": "AllowedDeleteText",
    "AllowedSeeHighlight": "AllowedSeeHighlight",
    "AllowedAddHighlight": "AllowedAddHighlight",
    "AllowedDeleteHighlight": "AllowedDeleteHighlight",
    "AllowedHideRedaction": "AllowedHideRedaction",
    "AllowedAddRedaction": "AllowedAddRedaction",
    "AllowedDeleteRedaction": "AllowedDeleteRedaction"
}

var style2 = {
    height: 30, fontSize: 11, menuWidth: 200
};
var style1 = {
    height: 30, fontSize: 11, menuWidth: 250
};
var styleCam = {
    height: 30, fontSize: 11, menuWidth: 150
};
var styleScan = {
    height: 30, fontSize: 11, menuWidth: 250
};

var printIcon = "fa fa-print large";
var emailIcon = "fa fa-envelope large";
var saveIcon = "fa fa-save large";
var rlIcon = "fa fa-rotate-left large";
var rrIcon = "fa fa-rotate-right large";
var fitHIcon = "glyphicon glyphicon-resize-vertical large";
var fitWIcon = "glyphicon glyphicon-resize-horizontal large";
var upIcon = "glyphicon glyphicon-arrow-up large";
var downIcon = "glyphicon glyphicon-arrow-down large";
var scanIcon = "glyphicon glyphicon-camera large";
var importIcon = "glyphicon glyphicon-import large";
var cameraIcon = "glyphicon glyphicon-facetime-video large";
var delIcon = "glyphicon glyphicon-trash large";
var ziIcon = "glyphicon glyphicon-zoom-in large";
var zoIcon = "glyphicon glyphicon-zoom-out large";
var idIcon = "glyphicon glyphicon-th large";
var hideIcon = "glyphicon glyphicon-eye-close large";
var hlIcon = "fa fa-square-o";
var reIcon = "fa fa-square large";
var comIcon = "fa fa-edit large";

//#endregion//#region Callback and Event
function callback_ClassifyLater() {
    insOption = Options.ClassifyLater;
    $("#filePath").click();
}
function callback_DefaultBatch(key, options) {
    switch (key) {
        case 'delete': {
            var $page = $(this);
            BootstrapDialog.confirm({
                title: 'WARNING',
                message: 'Are you sure you want to delete selection?',
                type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
                closable: true, // <-- Default value is false
                draggable: true, // <-- Default value is false
                btnCancelLabel: 'Cancel', // <-- Default value is 'Cancel',
                btnOKLabel: 'OK', // <-- Default value is 'OK',
                btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
                callback: function (result) {
                    // result will be true if button was click, while it will be false if users close the dialog directly.
                    if (result) {
                        deletePage($page);
                        $documentViewer.children('.content').show();
                    } 
                }
            });
            //$.messageBox({
            //    title: 'Delete All',
            //    message: "Do you want delete all document?",
            //    buttons: {
            //        Yes: function () {
            //            deletePage($page);
            //            $documentViewer.children('.content').show();
            //            $(this).dialog("close");
            //        },
            //        No: function () { $(this).dialog("close"); }
            //    }
            //});
            break;
        }
        case 'reImport': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $('ul.default_batch');
            insOption = Options.Replace.Import;
            $("#filePath").click();
            break;
        }
        case 'insBefore_Import': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $('ul.default_batch');
            insOption = Options.InsertBefore;
            $("#filePath").click();
            break;
        }
        case 'insAfter_Import': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $('ul.default_batch');
            insOption = Options.InsertAfter;
            $("#filePath").click();
            break;
        }
        case 'rotationright': {
            $(this).click();
            $selectedPage = $(this);
            var pageid = $(this).find(".page").attr("id");
            docs[pageid].rotateClockwise();
            break;
        }
        case 'rotationleft': {
            $(this).click();
            $selectedPage = $(this);
            var pageid = $(this).find(".page").attr("id");
            docs[pageid].rotateCounterClockwise();
            break;
            //$(".control_" + key).click();
        }
    }
}
function callback_MultiPage(key, options) {
    insOption = key;
    var name = key.split('-')[0];
    var _docType = searchDocType(name);
    classifyMultiPage($(this), _docType);
}
function callback_SinglePage(key, options) {
    var name = key.split('-')[0];
    var _docType = searchDocType(name);
    insOption = name;
    classifySinglePage($(this), _docType);
}
function callback_ContextMenuPageClassified(key, options) {
    switch (key) {
        case 'delete': {
            var $page = $(this);

            BootstrapDialog.confirm({
                title: 'WARNING',
                message: 'Are you sure you want to delete selection?',
                type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
                closable: true, // <-- Default value is false
                draggable: true, // <-- Default value is false
                btnCancelLabel: 'Cancel', // <-- Default value is 'Cancel',
                btnOKLabel: 'OK', // <-- Default value is 'OK',
                btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
                callback: function (result) {
                    // result will be true if button was click, while it will be false if users close the dialog directly.
                    if (result) {
                        deletePage($page);
                    }
                }
            });

            break;
        }
        case 'reImport': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $selectedPage.parentsUntil('.treeview_second').filter('.treeview_second > li');
            insOption = Options.Replace.Import;
            $("#filePath").click();
            break;
        }
        case 'insBefore_Import': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $selectedPage.parentsUntil('.treeview_second').filter('.treeview_second > li');
            insOption = Options.InsertBefore;
            $("#filePath").click();
            break;
        }
        case 'insAfter_Import': {
            $(this).click();
            $selectedPage = $(this);
            $selectedFolder = $selectedPage.parentsUntil('.treeview_second').filter('.treeview_second > li');
            insOption = Options.InsertAfter;
            $("#filePath").click();
            break;
        }
        case 'index': {
            $(this).click();
            $('#index').click();
            break;
        }
        case 'rotationright': {
            //$(this).click();
            $selectedPage = $(this);
            var currentPageid = $(this).find(".page").attr("id");
            docs[currentPageid].rotateClockwise();
            thumbs[currentPageid].rotateThumbRight();

            $.each($selectedPage.parent().find(".treeview_select"), function (i, item) {
                var pageid = item.id;

                if (pageid != currentPageid) {
                    docs[pageid].rotateClockwise();
                    thumbs[pageid].rotateThumbRight();
                }
            });

            break;
        }
        case 'rotationleft': {
            //$(this).click();
            $selectedPage = $(this);

            var currentPageid = $(this).find(".page").attr("id");
            docs[currentPageid].rotateCounterClockwise();
            thumbs[currentPageid].rotateThumbLeft();

            $.each($selectedPage.parent().find(".treeview_select"), function (i,item) {
                var pageid = item.id;

                if (pageid != currentPageid) {
                    docs[pageid].rotateCounterClockwise();
                    thumbs[pageid].rotateThumbLeft();
                }
            });

            break;
            //$(".control_" + key).click();
        }
        default: {
            var _docType = searchDocType(key);
            if (_docType) {
                insOption = _docType.DocType.Name;
                $("#filePath").click();
            } else {

            }
        }
    }
}

function callback_Import(key) {
    console.log(key);
    var _docType = searchDocType(key);
    if (_docType) {
        insOption = Options.Import;
        docTypeName = key;
        $("#formUpload input[name=docTypeId]").val(_docType.DocType.Id);
        $("#filePath").click();
    } else {

    }
}
function callback_Scan(key) {
    key = key.replace("scan-", "");
    _docType = searchDocType(key);
    if (_docType) {
        insOption = Options.Import;
        docTypeName = key;
        try {
            var obj;
            if ($.browser.chrome)
                obj = document.TwainX;
                //obj = new ActiveXObject("TwainActiveX.TwainActiveX");
            else
                obj = new ActiveXObject("TwainActiveX.TwainActiveX");
            if (obj) {
                var s = obj.Scan(true, "http://" + document.location.host + "/" + URL_PostImage);
                var pages = JSON.parse(s);
                var pagePerDoc = parseInt($('.page_per_doc').val());
                if (pagePerDoc == 0)
                    createPage(pages, Options.Import);
                else {
                    for (var i = 0; i < pages.length; i += pagePerDoc) {
                        if (i + pagePerDoc < pages.length) {
                            var data = pages.slice(i, i + pagePerDoc);
                            createPage(data, Options.Import);
                        } else {
                            var data = pages.slice(i);
                            createPage(data, Options.Import);
                        }
                    }
                }
            }
        }
        catch (e) {
            console.log(e);
        }
    } else {

    }
}
var _eventsLangCheck = {
    click: function (e) {
        $('.cntx_language').removeAttr('checked');
        $(this).attr('checked', 'checked');
        $selectedFolder.find('input[type="hidden"].cntx_language').val($(this).attr('class').split(' ')[1]);
        //var p = $selectedPage.parentsUntil('.treeview_second').filter('.treeview_second > li');
        //var children = p.find('ul.treeview_three > li');
        //var last = $(children[0]).find('.language').val();
        //$.each(children, function () {
        //    if (last != $(this).find('.language').val()) {
        //        p.find('.language:first').val('eng');
        //        return;
        //    } else {
        //        p.find('.language:first').val(last);
        //    }
        //});
    }
}
var _eventsPagesPerDocCheck = {
    click: function (e) {
        $('.cntx_pagesPerDoc').removeAttr('checked');
        $(this).attr('checked', 'checked');
        //$selectedFolder.find('input[type="hidden"].cntx_pagesPerDoc').val($(this).attr('class').split(' ')[1]);
    }
}
function callback_ContextMenuCamera(key) {
    key = key.replace("camera-", "");
    var _docType = searchDocType(key);
    console.log();
    if (_docType) {
        //insOption = _docType.DocType.Name;
        docTypeName = _docType.DocType.Name;
        showWebcam();
    }
}
function callback_DocViewerContextMenu(key, options) {
    $selectedPage = $(this).find(".active");
    var currentPageid = $(this).find(".active").attr("id").replace("page_", "");
    switch(key)
    {
        case "rotationleft": {
            docs[currentPageid].rotateCounterClockwise();
            thumbs[currentPageid].rotateThumbLeft();
            break;
        }
        case "rotationright": {
            docs[currentPageid].rotateClockwise();
            thumbs[currentPageid].rotateThumbRight();
            break;
        }
        case "navigationdown":
            {
                var $next = $selectedPage.next();
                $next.addClass("active");
                $selectedPage.removeClass("active");
                $("#documentViewer").scrollTo($next);

                var pageId = $next.attr("id").replace("page_", "");
                var $thumbPage = $(".treeview_three > li.active");
                var $selectThumbPage = $(".treeview_three > li#" + pageId);

                $thumbPage.removeClass("active");
                $selectThumbPage.addClass("active");

                $thumbnail.scrollTo($selectedPage);

                break;
            }
        case "navigationup":
            {
                var $pre = $selectedPage.prev();
                $pre.addClass("active");
                $selectedPage.removeClass("active");
                $("#documentViewer").scrollTo($pre);

                var pageId = $pre.attr("id").replace("page_", "");
                var $thumbPage = $(".treeview_three > li.active");
                var $selectThumbPage = $(".treeview_three > li#" + pageId);

                $thumbPage.removeClass("active");
                $selectThumbPage.addClass("active");

                $thumbnail.scrollTo($selectedPage);

                break;
            }
        default: {
            $(".control_" + key).click();
        }
    }
}
//#endregion

function createContextMenu(docTypes, permissions) {
    if (global_Page == "Capture") {
        createContextMenuCapture(docTypes);
        createContextMenuPageDefault(docTypes, permissions);
        createContextMenuCamera(docTypes, permissions);
        createContextMenuImport(docTypes, permissions);
        createContextMenuScan(docTypes, permissions);
    }
    createContextMenuDocType(docTypes, permissions);
    createContextMenuPageClassified(docTypes, permissions);
    createContextMenuDocViewer(docTypes, permissions);
}
function createContextMenuDocType(docTypes, permissions) {
    //#region Items an Options for context menu
    //Items for Context Menu
    var itemsOfDocTypeFull = {
        change: {
            name: RMenuCapture['changeContent'],
            style: style2,
            imgClass: 'fa fa-exchange large'
        },
        lang: {
            name: RMenuCapture['contentLang'],
            items: {
                'eng': {
                    name: RMenuCapture['eng'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'language eng',
                    selected: true
                },
                'vie': {
                    name: RMenuCapture['vie'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'language vie'
                }
            },
            style: style2
        },
        sep: '----',
        'delete': {
            name: RMenuCapture['delete'], imgClass: delIcon
        },
        sep1: '----',
        append: {
            name: RMenuCapture['append'], items: {
                "apScan": {
                    name: RMenuCapture['scan'], imgClass: scanIcon//iconUrl: URL_ScanIcon
                },
                "apImport": {
                    name: RMenuCapture['import'], imgClass: importIcon//iconUrl: URL_ImportIcon
                },
                "apCamera": {
                    name: RMenuCapture['camera'], imgClass: cameraIcon//iconUrl: URL_ImportIcon
                }
            },
            style: style2
        },
        rotationright: {
            name: RMenuCapture['rotateRight'], imgClass: rrIcon
        },
        rotationleft: {
            name: RMenuCapture['rotateLeft'], imgClass: rlIcon
        },
        sep2: '----',
        index: {
            name: RMenuCapture['index'], imgClass: idIcon
        },
    };
    //Context menu options
    var menuOptDocType = {
        selector: ".folder",
        items: itemsOfDocTypeFull,
        style: style1,
        callback: function (key, options) {
            switch (key) {
                case 'delete': {
                    var $folder = $(this);
                    BootstrapDialog.confirm({
                        title: 'WARNING',
                        message: 'Are you sure you want to delete selection?',
                        type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
                        closable: true, // <-- Default value is false
                        draggable: true, // <-- Default value is false
                        btnCancelLabel: 'Cancel', // <-- Default value is 'Cancel',
                        btnOKLabel: 'OK', // <-- Default value is 'OK',
                        btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
                        callback: function (result) {
                            // result will be true if button was click, while it will be false if users close the dialog directly.
                            if (result) {
                                deleteDoc($folder);
                                $documentViewer.children('.content').show();
                            }
                        }
                    });

                    break;
                }
                case 'index': {
                    $(this).click();
                    $('#index').click();
                    break;
                }
                case 'apImport': {
                    $selectedFolder = $(this).parent();
                    $selectedPage = $selectedFolder.find(".treeview_three > li:last-child");
                    console.log($selectedPage);
                    insOption = Options.InsertAfter;
                    $("#filePath").click();
                    break;
                }
                case "rotationright":
                case "rotationleft":
                    {
                        $(this).click();
                        $selectedPage = $selectedFolder.find(".treeview_three > li:last-child");
                        $(".control_" + key).click();
                        break;
                    }
                default: {
                    var _docType = searchDocType(key);
                    if (_docType) {
                        insOption = _docType.DocType.Name;
                        $("#filePath").click();
                    } else {

                    }
                }
            }
        },
        events: {
            show: function (opt) {
                var $this = $(this);
                $selectedFolder = $this.parent();
                delete $selectedPage;
                var value = $this.data();
                var lang = $selectedFolder.find('.language:first').val();
                var _eng = lang == "eng";
                var _vie = lang == "vie";
                $.contextMenu.setInputValues(opt, { key: value.key, 'eng': _eng, 'vie': _vie });
            },
            hide: function (opt) {
                var $this = $(this);
                $selectedFolder = $this.parent();
                delete $selectedPage;
                $.contextMenu.getInputValues(opt, $this.data());
            }
        }
    };
    //Append DocumentType for Context Menu
    if (docTypes != undefined && docTypes.length > 0) {
        itemsOfDocTypeFull.change.items = {};
        $.each(docTypes, function(i) {
            itemsOfDocTypeFull.change.items[this.DocType.Name] = {
                name: this.DocType.Name,
                callback: changeDocument
            };
            if (this.IconKey) {
                itemsOfDocTypeFull.change.items[this.DocType.Name].iconUrl 
                    = URL_GetIcon + "/?key=" + this.IconKey;
            }
        });
    }
    //#endregion
    if (global_Page == "Capture") {
        //Context Menu for folder title
        $.contextMenu(menuOptDocType);
    }
    else {
        $.each(docTypes, function (i) {
            var itemsOfDocType = {};
            var per = permissions.documentType[this.DocType.Id];

            if (per == undefined) {
                return false;
            }
            if(per[docTypePermission.AllowedChangeDocumentType]){
                itemsOfDocType.change = itemsOfDocTypeFull.change;
            }
            itemsOfDocType.lang = itemsOfDocTypeFull.lang;
            itemsOfDocType.sep = '---';
            if(per[docTypePermission.AllowedDeletePage]){
                itemsOfDocType.delete = itemsOfDocTypeFull.delete;
                itemsOfDocType.sep1 = '---';
            }
            if(per[docTypePermission.AllowedAppendPage]){
                itemsOfDocType.append = itemsOfDocTypeFull.append;
            }
            if(per[docTypePermission.AllowedRotatePage]){
                itemsOfDocType.rotationleft = itemsOfDocTypeFull.rotationleft;
                itemsOfDocType.rotationright = itemsOfDocTypeFull.rotationright;
                itemsOfDocType.sep2 = '---';
            }
            //itemsOfDocType.index = itemsOfDocTypeFull.index;
            menuOptDocType.items = itemsOfDocType;
            menuOptDocType.selector = "li[data-doc_type_id=" + this.DocType.Id + "] .folder"
            $.contextMenu(menuOptDocType);
        });
    }
}
function createContextMenuPageClassified(docTypes, permissions) {
    //#region Items an Options for context menu
    //Items for Context Menu
    var itemsOfPageClassifiedFull = {
        'newFromPage': {
            name: RMenuCapture['newDocFromPage'],
            style: style2, imgClass: 'glyphicon glyphicon-plus large'
        },
        'lang': {
            name: RMenuCapture['contentLang'],
            items: {
                'eng': {
                    name: RMenuCapture['eng'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'cntx_language eng',
                    selected: true
                },
                'vie': {
                    name: RMenuCapture['vie'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'cntx_language vie'
                }
            },
            style: style2
        },
        'sep': '----',
        'delete': {
            name: RMenuCapture['delete'], imgClass: delIcon
        },
        'replace': {
            name: RMenuCapture['replace'],
            items: {
                "reScan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "reImport": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "reCamera": {name:RMenuCapture['camera'], imgClass: cameraIcon}
            },
            style: style2
        },
        'sep1': '----',
        'insBefore': {
            name: RMenuCapture['insertBefore'],
            items: {
                "insBefore_Scan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "insBefore_Import": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "insBefore_Camera": { name: RMenuCapture['camera'], imgClass: cameraIcon }
            },
            style: style2
        },
        'insAfter': {
            name: RMenuCapture['insertAfter'],
            items: {
                "insAfter_Scan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "insAfter_Import": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "insAfter_Camera": {
                    name: RMenuCapture['camera'], imgClass: cameraIcon
                }
            },
            style: style2
        },
        'rotationright': {
            name: RMenuCapture['rotateRight'], imgClass: rrIcon
        },
        'rotationleft': {
            name: RMenuCapture['rotateLeft'], imgClass: rlIcon
        },
    };
    itemsOfPageClassifiedFull.newFromPage.items = {};
    $.each(docTypes, function (i) {
        itemsOfPageClassifiedFull.newFromPage.items[this.DocType.Name + '-new_from_here'] = {
            name: this.DocType.Name,
            callback: callback_SinglePage
        };
        if (this.IconKey) {
            itemsOfPageClassifiedFull.newFromPage.items[this.DocType.Name + '-new_from_here'].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
        }
    });
    //Context menu options
    var menuOptPageClassified = {
        selector: "ul.treeview_three li",
        items: itemsOfPageClassifiedFull,
        style: style1,
        callback: callback_ContextMenuPageClassified,
        events: {
            show: function (opt) {
                var $this = this;
                $selectedPage = $this;
                var value = $this.data();
                if (value['vie'] == value['eng'])
                    $.contextMenu.setInputValues(opt, { key: value.key, 'eng': true, 'vie': false });
                else
                    $.contextMenu.setInputValues(opt, $this.data());
            },
            hide: function (opt) {
                var $this = this;
                $selectedPage = $this;
            }
        }
    };
    //#endregion
    if (global_Page == "Capture") {
        //Context Menu for folder title
        $.contextMenu(menuOptPageClassified);
    }
    else {
        $.each(docTypes, function (i) {
            var itemsOfPageClassified = {};
            var per = permissions.documentType[this.DocType.Id];
            //Set Permission
            if(per[docTypePermission.AllowedDeletePage]){
                itemsOfPageClassified.delete = itemsOfPageClassifiedFull.delete;
            }
            if(per[docTypePermission.AllowedReplacePage]){
                itemsOfPageClassified.replace = itemsOfPageClassifiedFull.replace;
                itemsOfPageClassified.sep = '---';
            }
            if(per[docTypePermission.AllowedAppendPage]){
                itemsOfPageClassified.insBefore = itemsOfPageClassifiedFull.insBefore;
                itemsOfPageClassified.insAfter = itemsOfPageClassifiedFull.insAfter;
            }
            if(per[docTypePermission.AllowedRotatePage]){
                itemsOfPageClassified.rotationleft = itemsOfPageClassifiedFull.rotationleft;
                itemsOfPageClassified.rotationright = itemsOfPageClassifiedFull.rotationright;
                itemsOfPageClassified.sep1 = '---';
            }
            menuOptPageClassified.items = itemsOfPageClassified;
            menuOptPageClassified.selector = "li[data-doc_type_id=" + this.DocType.Id + "]  li";
            $.contextMenu(menuOptPageClassified);
        });
    }
}
function createContextMenuDocViewer(docTypes, permissions) {
    //#region Items an Options for context menu
    //Items for Context Menu
    var itemsOfDocViewerFull = {
        print: {
            name: RMenuCapture['print'], imgClass: printIcon//iconUrl: URL_PrintIcon
        },
        mail: {
            name: RMenuCapture['mail'], imgClass:emailIcon//iconUrl: URL_MailIcon
        },                              
        save: {                         
            name: RMenuCapture['save'], imgClass: saveIcon//iconUrl: URL_SaveIcon
        },                              
        sep1: "---",                    
        hide: {                         
            name: RMenuCapture['hide'], imgClass: hideIcon //iconUrl: URL_HideIcon
        },
        highlight: {
            name: RMenuCapture['highlight'], imgClass: hlIcon//iconUrl: URL_HighlightIcon
        },
        redaction: {
            name: RMenuCapture['redaction'], imgClass: reIcon//iconUrl: URL_RedactionIcon
        },
        comment: {
            name: RMenuCapture['note'], imgClass: comIcon//iconUrl: URL_NoteIcon
        },
        sep2: "---",
        rotationleft: {
            name: RMenuCapture['rotateLeft'], imgClass: rlIcon//iconUrl: URL_RotateLeftIcon
        },
        rotationright: {
            name: RMenuCapture['rotateRight'], imgClass: rrIcon//iconUrl: URL_RotateRightIcon
        },
        zoomin: {
            name: RMenuCapture['zoomIn'], imgClass: ziIcon//iconUrl: URL_ZoomIn
        },
        zoomout: {
            name: RMenuCapture['zoomOut'], imgClass: zoIcon//iconUrl: URL_ZoomOut
        },
        fitwidth: {
            name: RMenuCapture['fitWidth'], imgClass: fitWIcon//iconUrl: URL_FitViewer
        },
        fitheight: {
            name: RMenuCapture['fitHeight'], imgClass: fitHIcon//iconUrl: URL_FitViewer
        },
        sep3: "---",
        navigationup: {
            name: RMenuCapture['previous'], imgClass: upIcon//iconUrl: URL_PreviousIcon
        },
        navigationdown: {
            name: RMenuCapture['next'], imgClass: downIcon//iconUrl: URL_NextIcon
        },
    };
    //Context menu options
    var menuOptDocViewer = {
        selector: ".document",
        items: itemsOfDocViewerFull,
        style: style2,
        callback: callback_DocViewerContextMenu,
        //    function (key, options) {
        //    $(".control_" + key).click();
        //},
        show: function (opt) {
            console.log("show");
        }
    };
    //#endregion
    if (global_Page == "Capture") {
        //Context Menu for folder title
        $.contextMenu(menuOptDocViewer);
    }
    else {
        $.each(docTypes, function (i) {
            var itemsOfDocViewer = {};
            var per = permissions.documentType[this.DocType.Id];
            var perAnn = permissions.annotation[this.DocType.Id];
            //Set Permission
            if (per[docTypePermission.AlowedPrintDocument]) {
                itemsOfDocViewer.print = itemsOfDocViewerFull.print;
            }
            if (per[docTypePermission.AllowedEmailDocument]) {
                itemsOfDocViewer.mail = itemsOfDocViewerFull.mail;
            }
            if (per[docTypePermission.AllowedDownloadOffline]) {
                itemsOfDocViewer.save = itemsOfDocViewerFull.save;
                itemsOfDocViewer.sep = '---';
            }
            if (per[docTypePermission.AllowedHideAllAnnotation]) {
                itemsOfDocViewer.hide = itemsOfDocViewerFull.hide;
            }
            if (per[annotationPermission.AllowedAddHighlight]) {
                itemsOfDocViewer.highlight = itemsOfDocViewerFull.highlight;
            }
            if (per[annotationPermission.AllowedAddRedaction]) {
                itemsOfDocViewer.redaction = itemsOfDocViewerFull.redaction;
            }
            if (per[annotationPermission.AllowedAddText]) {
                itemsOfDocViewer.comment = itemsOfDocViewerFull.comment;
            }
            if (per[docTypePermission.AllowedRotatePage]) {
                itemsOfDocViewer.rotationleft = itemsOfDocViewerFull.rotationleft;
                itemsOfDocViewer.rotationright = itemsOfDocViewerFull.rotationright;
            }

            itemsOfDocViewer.sep1 = '---';
            itemsOfDocViewer.zoomin = itemsOfDocViewerFull.zoomin;
            itemsOfDocViewer.zoomout = itemsOfDocViewerFull.zoomout;
            itemsOfDocViewer.fitviewer = itemsOfDocViewerFull.fitviewer;
            itemsOfDocViewer.fitwidth = itemsOfDocViewerFull.fitwidth;
            itemsOfDocViewer.fitheight = itemsOfDocViewerFull.fitheight;
            itemsOfDocViewer.sep2 = '---';
            itemsOfDocViewer.navigationup = itemsOfDocViewerFull.navigationup;
            itemsOfDocViewer.navigationdown = itemsOfDocViewerFull.navigationdown;
            menuOptDocViewer.items = itemsOfDocViewer;
            $.contextMenu(menuOptDocViewer);
        });
    }
}
function createContextMenuCapture(list) {
    //Context Menu cho selector
    var _items = {};
    _items = {
        "scan": {
            name: RMenuCapture['scan'], imgClass: scanIcon,
            style: style2
        },
        "import": {
            name: RMenuCapture['import'], imgClass: importIcon,
            style: style2
        },
        "camera": {
            name: RMenuCapture['camera'], imgClass: cameraIcon,
            style: style2
        },
        "sep": "-----",
        "delete": {
            name: RMenuCapture['delete'], imgClass: delIcon
        }
    };
    if (list != undefined && list.length > 0) {
        _items.import.items = {};
        _items.scan.items = {};
        _items.camera.items = {};
        _items.import.items['classify'] = {
            name: RMenuCapture['classifyLater'],
            callback: function (k, o) {
                callback_ClassifyLater.call(this);
            }
        };
        _items.scan.items['scan-classify'] = {
            name: RMenuCapture['classifyLater'],
            callback: function (k, o) {
                callback_ClassifyLater.call(this, 'scan');
            }
        };

        _items.camera.items['camera-clasify'] = {
            name: RMenuCapture['classifyLater'],
            callback: function (k, o) {
                callback_ClassifyLater.call(this, 'camera');
            }
        };

        _items.import.items.sep1 = '-----';
        _items.scan.items.sep1 = '-----';
        _items.camera.items.sep1 = '-----';

        for (i = 0; i < list.length; i++) {
            _items.import.items[list[i].DocType.Name] = {
                name: list[i].DocType.Name,
                callback: callback_Import
            };
            _items.scan.items['scan-' + list[i].DocType.Name] = {
                name: list[i].DocType.Name,
                callback: callback_Scan
            };
            _items.camera.items['camera-' + list[i].DocType.Name] = {
                name: list[i].DocType.Name,
                callback: callback_ContextMenuCamera
            };
        }
    }
    console.log(_items);
    $.contextMenu({
        selector: "#openFile",
        items: _items,
        style: style2,
        callback: function (key, options) {
            switch (key) {
                case 'delete': {
                    var $page = $(this);
                    BootstrapDialog.confirm({
                        title: 'WARNING',
                        message: 'Are you sure you want to delete selection?',
                        type: BootstrapDialog.TYPE_WARNING, // <-- Default value is BootstrapDialog.TYPE_PRIMARY
                        closable: true, // <-- Default value is false
                        draggable: true, // <-- Default value is false
                        btnCancelLabel: 'Cancel', // <-- Default value is 'Cancel',
                        btnOKLabel: 'OK', // <-- Default value is 'OK',
                        btnOKClass: 'btn-warning', // <-- If you didn't specify it, dialog type will be used,
                        callback: function (result) {
                            // result will be true if button was click, while it will be false if users close the dialog directly.
                            if (result) {
                                $('.default_batch > li').remove();
                                $('.treeview_second > li').remove();
                                $documentViewer.children(':not(.content)').remove();
                                $documentViewer.children('.content').show();
                            }
                        }
                    });

                    break;
                }
            }
        },
        show: function (opt) {
            console.log("show");
        }
    });
}

function createContextMenuPageDefault(docTypes, permissions) {
    var itemsOfPageDefaultFull = {
        'newFromPage': {
            name: RMenuCapture['newDocFromPage'],
            style: style2
        },
        'lang': {
            name: RMenuCapture['contentLang'],
            items: {
                'eng': {
                    name: RMenuCapture['eng'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'language eng',
                    selected: true
                },
                'vie': {
                    name: RMenuCapture['vie'], type: 'checkbox',
                    events: _eventsLangCheck, onclass: 'language vie'
                }
            },
            style: style2
        },
        'newHere': {
            name: RMenuCapture['newDocHere'],
            style: style2
        },
        'sep': '----',
        'delete': {
            name: RMenuCapture['delete']
        },
        'replace': {
            name: RMenuCapture['replace'],
            items: {
                "reScan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "reImport": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "reCamera": {
                    name: RMenuCapture['cammera'], imgClass: cameraIcon
                }
            },
            style: style2
        },
        'sep1': '----',
        'insBefore': {
            name: RMenuCapture['insertBefore'],
            items: {
                "insBefore_Scan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "insBefore_Import": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "insBefore_Camera": {
                    name: RMenuCapture['camera'], imgClass: cameraIcon
                }
            },
            style: style2
        },
        'insAfter': {
            name: RMenuCapture['insertAfter'],
            items: {
                "insAfter_Scan": { name: RMenuCapture['scan'], imgClass: scanIcon },
                "insAfter_Import": {
                    name: RMenuCapture['import'], imgClass: importIcon
                },
                "insAfter_Camera": {
                    name: RMenuCapture['camera'], imgClass: cameraIcon
                }
            },
            style: style2
        },
        'rotationright': {
            name: RMenuCapture['rotateRight'], imgClass: rrIcon
        },
        'rotationleft': {
            name: RMenuCapture['rotateLeft'], imgClass: rlIcon
        },
    };
    itemsOfPageDefaultFull.newHere.items = {};
    itemsOfPageDefaultFull.newFromPage.items = {};
    $.each(docTypes, function (i) {
        //Check icon is not null
        itemsOfPageDefaultFull.newHere.items[this.DocType.Name + '-new_from_here'] = {
            name: this.DocType.Name,
            callback: callback_MultiPage
        };
        itemsOfPageDefaultFull.newFromPage.items[this.DocType.Name + '-new_from_here'] = {
            name: this.DocType.Name,
            callback: callback_SinglePage
        };
        if (this.IconKey) {
            itemsOfPageDefaultFull.newHere.items[this.DocType.Name + '-new_from_here'].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
            itemsOfPageDefaultFull.newFromPage.items[this.DocType.Name + '-new_from_here'].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
        }
    });
    var menuOptPageDefault = {
        selector: "ul.default_batch li",
        items: itemsOfPageDefaultFull,
        style: style1,
        callback: callback_DefaultBatch,
        events: {
            show: function (opt) {
                var $this = this;
                $selectedPage = $this;
                var value = $this.data();
                if (value['vie'] == value['eng'])
                    $.contextMenu.setInputValues(opt, { key: value.key, 'eng': true, 'vie': false });
                else
                    $.contextMenu.setInputValues(opt, $this.data());
            },
            hide: function (opt) {
                var $this = this;
                $selectedPage = $this;
                $.contextMenu.getInputValues(opt, $this.data());
            }
        }

    }
    $.contextMenu(menuOptPageDefault);
}

function createContextMenuCamera(docTypes, permissions) {
    var _items = {};
    $.each(docTypes, function (i) {
        _items[this.DocType.Name] = {
            name: this.DocType.Name,            
        };
        if (this.IconKey) {
            _items[this.DocType.Name].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
        }
    });
    //Context menu options
    var _menuOptions = {
        selector: ".webcam_feature .span_show",
        items: _items,
        trigger: 'none',
        style: styleCam,
        callback: callback_ContextMenuCamera
    };
    $.contextMenu(_menuOptions);
}
function createContextMenuImport(docTypes, permissions) {
    var _items = {};
    $.each(docTypes, function (i) {
        _items[this.DocType.Name] = {
            name: this.DocType.Name,
        };
        if (this.IconKey) {
            _items[this.DocType.Name].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
        }
    });
    //Context menu options
    var _menuOptions = {
        selector: ".upload_feature .span_show",
        items: _items,
        trigger: 'none',
        style: styleCam,
        callback: callback_Import
    };
    $.contextMenu(_menuOptions);
}
function createContextMenuScan(docTypes, permissions) {
    var _items = {
        pagesPerDoc: { 
            name: "Scanning pages per document", 
            items:{
                "Page_0": {
                    name: "Not set",
                    type: "checkbox",
                    onclass: 'cntx_pagesPerDoc',
                    selected: true,
                    //style: { height: 30, fontSize: 11, menuWidth: 200 },
                    events: _eventsPagesPerDocCheck
                },
            },
            style: { height: 30, fontSize: 11, menuWidth: 150 }
        }
    };
    
    for (i = 1; i <= 10; i++) {
        _items.pagesPerDoc.items["Page_" + i] = {
            name: i + " page" + (i > 1 ? "s" : ""),
            onclass: 'cntx_pagesPerDoc',
            type: "checkbox",
            events: _eventsPagesPerDocCheck
            //style: styleCam
        };
    }
    $.each(docTypes, function (i) {
        _items[this.DocType.Name] = {
            name: this.DocType.Name,
        };
        if (this.IconKey) {
            _items[this.DocType.Name].iconUrl
                = URL_FolderLight;//URL_GetIcon + "/?key=" + this.IconKey;
        }
    });
    //Context menu options
    var _menuOptions = {
        selector: ".scan_feature .span_show",
        items: _items,
        trigger: 'none',
        style: styleScan,
        callback: callback_Scan,
        events: {
            show: function (opt) {
                try{
                    // this is the trigger element
                    var data = this.data();
                    //Check not checked any checkbox
                    var isNotChecked = true;
                    $.each(data, function (i, v) {
                        if (v == true) {
                            return isNotChecked = false;
                        }
                    });
                    if (isNotChecked)
                        data["Page_0"] = true;
                    // import states from data store 
                    $.contextMenu.setInputValues(opt, data);
                    // this basically fills the input commands from an object
                    // like {name: "foo", yesno: true, radio: "3", …}
                } catch (e) {
                    console.log(e);
                }
            },
            hide: function (opt) {
                // this is the trigger element
                var $this = this;
                // export states to data store
                $.contextMenu.getInputValues(opt, $this.data());
                // this basically dumps the input commands' values to an object
                // like {name: "foo", yesno: true, radio: "3", …}
            }
        }
    };
    $.contextMenu(_menuOptions);
}

