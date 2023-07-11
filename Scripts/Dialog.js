//confirm dialog
String.Format = function () {
    var s = arguments[0];
    for (var i = 0; i < arguments.length - 1; i++) {
        var reg = new RegExp("\\{" + i + "\\}", "gm");
        s = s.replace(reg, arguments[i + 1]);
    }
    return s;
}

var dialogConfirmed = false;
function ConfirmDialog(obj, title, dialogText, height, width) {
    if (!dialogConfirmed) {
        $('body').append(String.Format("<div id='dialog' title='{0}'><p style='color:#000'>{1}</p></div>",
            title, dialogText));

        $('#dialog').dialog
        ({
            dialogClass: 'new-ui-dialog',
            height: height,
            modal: true,
            resizable: false,
            draggable: false,
            width: width,
            close: function (event, ui) { $('body').find('#dialog').remove(); },
            buttons:
            {
                'NO': function () {
                    $(this).dialog('close');
                },
                'YES': function () {
                    $(this).dialog('close');
                    dialogConfirmed = true;
                    if (obj) {
                        fireEvent(obj, 'click');
                        dialogConfirmed = false;
                    }
                }
            }
        });
    }

    return dialogConfirmed;
}

function ConfirmationDialog(obj, title, dialogText, height, width) {
    if (!dialogConfirmed) {
        $('body').append(String.Format("<div id='dialog' title='{0}'><p style='color:#000'>{1}</p></div>",
            title, dialogText));

        $('#dialog').dialog
        ({
            dialogClass: 'new-ui-dialog',
            height: height,
            modal: true,
            resizable: false,
            draggable: false,
            width: width,
            close: function (event, ui) { $('body').find('#dialog').remove(); },
            buttons:
            {
                'NO': function () {
                    $(this).dialog('close');
                    if ($('#chkFieldSelection').is(':checked')) {
                        $('#chkFieldSelection').prop("checked", false);
                    }
                    else {
                        $('#chkFieldSelection').prop("checked", true);
                    }
                },
                'YES': function () {
                    $(this).dialog('close');
                    dialogConfirmed = true;
                    if (obj) {
                        fireEvent(obj, 'click');
                        dialogConfirmed = false;
                    }
                }
            }
        });
    }

    return dialogConfirmed;
}

function AlertDialog(obj, title, dialogText, height, width) {
    $('body').append(String.Format("<div id='dialog' title='{0}'><p style='color:#000'>{1}</p></div>",
            title, dialogText));

    $('#dialog').dialog
        ({
            dialogClass: 'new-ui-dialog',
            height: height,
            modal: true,
            resizable: false,
            draggable: false,
            width: width,
            close: function (event, ui) {
                $('body').find('#dialog').remove();
            },
            buttons:
            {
                'OK': function () {
                    focus(obj);
                    ScrollTop();
                    $(this).dialog('close');
                }
            }
        });
}

function AlertDialogWithRedirect(obj, title, dialogText, redirectParameter, height, width) {
    $('body').append(String.Format("<div id='dialog' title='{0}'><p style='color:#000'>{1}</p></div>",
            title, dialogText));

    $('#dialog').dialog
        ({
            dialogClass: 'new-ui-dialog',
            height: height,
            modal: true,
            resizable: false,
            draggable: false,
            width: width,
            close: function (event, ui) { $('body').find('#dialog').remove(); },
            buttons:
            {
                'OK': function () {
                    focus(obj);
                    setTimeout("CloseDialog('" + redirectParameter + "')", 1000);
                }
            }
        });
}


function CloseDialog(redirectParameter) {
    var id = "";
    var id2 = "";
    var PageName = redirectParameter;
    if (redirectParameter.indexOf('~') != -1) {
        PageName = redirectParameter.split('~')[0];
        id = redirectParameter.split('~')[1];
        id2 = redirectParameter.split('~')[2];
    }
    $('#dialog').dialog('close');
    switch (PageName) {
        case "ApplicantDetails":
            window.location = "../ApplicantDetails.aspx?beneficiaryID=" + id + "&ClientID=" + id2;
            break;
        case "Applicant": window.location = "../Applicants.aspx";
            break;
        case "Petition":
            window.location = "../ApplicantDetails.aspx?beneficiaryID=" + id;
            break;
        case "AddUsers":
            window.location = "../LawFirm/Account.aspx?AddUserSuccess=" + id;
            break;
        case "UserSettings":
            window.location = "../LawFirm/Account.aspx";
            break;
        case "ClientList":
            window.location = "../Clients.aspx";
            break;
        case "ClientDetails":
            window.location = "../LawFirm/ClientDetails.aspx?ClientID=" + id;
            break;
        case "PetitionList":
            window.location = "../LawFirm/PetitionList.aspx";
            break;
        default: window.location = "../LawFirm/Account.aspx";
            break;
        case "Login":
            window.location = "../Login.aspx";
            break;
    }
}
