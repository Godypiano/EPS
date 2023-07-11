//Function to make CheckBoxList acts like RadioButtonList
function MutExChkList(chk) {
    var chkList = chk.parentNode.parentNode.parentNode.parentNode;
    var chks = chkList.getElementsByTagName("input");

    for (var i = 0; i < chks.length; i++) {
        if (chks[i] != chk && chk.checked) {
            chks[i].checked = false;
        }
    }
}

//Function to make two individual checkboxes (Yes/No) acts like RadioButtonList
//chk - pass 'this'
//chkID1 - pass first checkbox control client ID
//chkID2 - pass second checkbox control client ID
function YesNoCheck(chk, chkID1, chkID2) {
    var chk1 = $("#" + chkID1);
    var chk2 = $("#" + chkID2);

    if (chk == chk1[0]) {
        chk2.attr('checked', false);
    }
    else {
        chk1.attr('checked', false);
    }
}

//Function for Optional Phone Numbers
function OptionalThreeNumberValidation(source, arguments) {
    var Number = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (Number != null && Number != "") {
        Number = Number.substring(0, 3);
        var Number3 = Number.length;
        if (Number3 == 3)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}

function OptionalFourNumberValidation(source, arguments) {
    var Number = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (Number != null && Number != "") {
        Number = Number.substring(0, 4);
        var Number4 = Number.length;
        if (Number4 == 4)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}

function ZipCodeValidation(source, arguments) {
    var Number = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (Number != null && Number != "") {
        Number = Number.substring(0, 5);
        var Number5 = Number.length;
        if (Number5 == 5)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}

function OptionalNineNumberValidation(source, arguments) {
    var Number = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (Number != null && Number != "") {
        Number = Number.substring(0, 9);
        var Number9 = Number.length;
        if (Number9 == 9)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}

function OptionalPhoneNumberValidation(source, arguments) {
    var PhoneNumber = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (PhoneNumber != null && PhoneNumber != "") {
        PhoneNumber = PhoneNumber.substring(0, 10);
        var Number = PhoneNumber.length;
        if (Number == 10)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}

function PhoneNumberValidation(source, arguments) {
    var PhoneNumber = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    PhoneNumber = PhoneNumber.substring(0, 10);
    var Number = PhoneNumber.length;
    if (Number == 10)
        arguments.IsValid = true;
    else
        arguments.IsValid = false;
}

function OptionalElevenNumberValidation(source, arguments) {
    var PhoneNumber = arguments.Value.replace(/["~!@#$%^&x*\(\)_+=`{}\[\]\|\\:;'<>,.\/?"\- \t\r\n]+/g, '');
    if (PhoneNumber != null && PhoneNumber != "") {
        PhoneNumber = PhoneNumber.substring(0, 11);
        var Number = PhoneNumber.length;
        if (Number == 11)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
}


// Function to enable or disable a validator
// controlID - pass the ControlToValidate control ClientID that the validator is associated with
// status - pass false to disable the validator or true to enable the validator
// e.g. EnableDisableValidator("<%= txtToDate.ClientID %>", false);
function EnableDisableValidator(controlID, status) {
    if (typeof Page_Validators != 'undefined') {
        for (i = 0; i <= Page_Validators.length; i++) {
            var vldGrp = null;
            if (Page_Validators[i] != null) {
                vldGrp = Page_Validators[i].validationGroup;
                if (Page_Validators[i].controltovalidate == controlID) {
                    ValidatorEnable(Page_Validators[i], status);
                    break;
                };
            }
        }
    }
}


// Function to set max enter hits to multi line textbox
function preventEnterHits(textBox, e, length) {
    var code = (e.keyCode ? e.keyCode : e.which);
    if (code == 13 && textBox.value.match(/\n/g)) {
        if (textBox.value.match(/\n/g).length > length - 1) {
            if (window.event) {
                //IE
                e.returnValue = false;
                e.preventDefault();
            }
            else//Firefox
                e.preventDefault();
        }
    }
}

function Savealert() {
    alert("Saved Successfully");
}

function ValidateRequiredDate(source, arguments) {
    if (arguments.Value != null && arguments.Value != "__/__/____" && arguments.Value != "") {
        arguments.IsValid = true;
    }
    else {
        arguments.IsValid = false;
    }
}

//function setTimeSlots(petitionDetails) {
//    $('#divHidden').find('.hdnPetitionDetails').val(JSON.stringify(petitionDetails));
//}

//Function for Optional DOB
function OptionalDateValidate(source, arguments) {
    if (arguments.Value != "" && arguments.Value != "__/__/____") {
        ValidateDate(source, arguments);
    }
    else {
        arguments.IsValid = true;
        return true;
    }
}

//Validate Date (mm/dd/YYYY) 
function ValidateDate(source, arguments) {
    if (arguments.Value != "" && arguments.Value != "__/__/____") {
        var dateformat = /^(0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])[\/\-]\d{4}$/;
        // Match the date format through regular expression  
        if (arguments.Value.match(dateformat)) {
            //Test which seperator is used '/' or '-'  
            var opera1 = arguments.Value.split('/');
            var opera2 = arguments.Value.split('-');
            lopera1 = opera1.length;
            lopera2 = opera2.length;

            // Return error if Year is < 1753
            var year = opera1[2];
            if (year < 1753) {
                arguments.IsValid = false;
                return false;
            }

            // Extract the string into month, date and year  
            if (lopera1 > 1) {
                var pdate = arguments.Value.split('/');
            }
            else if (lopera2 > 1) {
                var pdate = arguments.Value.split('-');
            }
            var mm = parseInt(pdate[0]);
            var dd = parseInt(pdate[1]);
            var yy = parseInt(pdate[2]);
            // Create list of days of a month [assume there is no leap year by default]  
            var ListofDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            if (mm == 1 || mm > 2) {
                if (dd > ListofDays[mm - 1]) {
                    arguments.IsValid = false;
                    document.getElementById(source.controltovalidate).select();
                    return false;
                }
            }
            if (mm == 2) {
                var lyear = false;
                if ((!(yy % 4) && yy % 100) || !(yy % 400)) {
                    lyear = true;
                }
                if ((lyear == false) && (dd >= 29)) {
                    arguments.IsValid = false;
                    document.getElementById(source.controltovalidate).select();
                    return false;
                }
                if ((lyear == true) && (dd > 29)) {
                    arguments.IsValid = false;
                    document.getElementById(source.controltovalidate).select();
                    return false;
                }
            }
        }
        else {
            arguments.IsValid = false;
            document.getElementById(source.controltovalidate).select();
            return false;
        }
    }
    else {
        arguments.IsValid = false;
        return false;
    }
}

//DOB should be less than current date
function CheckDOB(source, arguments) {
    if (arguments.Value != "") {
        var DOB = new Date(arguments.Value);
        var today = new Date();
        if (DOB > today) {
            arguments.IsValid = false;
            document.getElementById(source.controltovalidate).select();
            return false;
        }
    }
}

// Click Event to support all browsers including Safari
function fireEvent(obj, evt) {
    var fireOnThis = obj;
    if (document.createEvent) {
        var evObj = document.createEvent('MouseEvents');
        evObj.initEvent(evt, true, false);
        fireOnThis.dispatchEvent(evObj);
    } else if (document.createEventObject) {
        //var evObj = document.createEventObject();
        //fireOnThis.fireEvent('on' + evt, evObj);
        if (obj.click != null && obj.click != undefined) {
            obj.click();
        }
    }
}

//Function to enable/disable Receipt Number and Validity fields in Update Status
function EnableReceiptnotice(rbReceiptnotice, rbapprovalnotice, ddlstatus, txtnumber, ddlupdatestatus, txtapprovalnumber, txtfrom, txtto) {
    if ($("#" + rbReceiptnotice.id).is(":checked")) {
        $("#" + ddlstatus.id).attr("disabled", false);
        $("#" + txtnumber.id).attr("disabled", false);
        $("#" + ddlupdatestatus.id).attr("disabled", true);
        $("#" + txtapprovalnumber.id).attr("disabled", true);
        $("#" + txtfrom.id).attr("disabled", true);
        $("#" + txtto.id).attr("disabled", true);

        EnableDisableValidator(txtnumber.id, true);
        EnableDisableValidator(txtapprovalnumber.id, false);
        EnableDisableValidator(txtfrom.id, false);
        EnableDisableValidator(txtto.id, false);
    }
    else if ($("#" + rbapprovalnotice.id).is(":checked")) {
        $("#" + ddlstatus.id).attr("disabled", true);
        $("#" + txtnumber.id).attr("disabled", true);
        $("#" + ddlupdatestatus.id).attr("disabled", false);
        $("#" + txtapprovalnumber.id).attr("disabled", false);
        $("#" + txtfrom.id).attr("disabled", false);
        $("#" + txtto.id).attr("disabled", false);

        EnableDisableValidator(txtnumber.id, false);
        EnableDisableValidator(txtapprovalnumber.id, true);
        EnableDisableValidator(txtfrom.id, true);
        EnableDisableValidator(txtto.id, true);
    }
    else {
        $("#" + ddlstatus.id).attr("disabled", true);
        $("#" + txtnumber.id).attr("disabled", true);
        $("#" + ddlupdatestatus.id).attr("disabled", true);
        $("#" + txtapprovalnumber.id).attr("disabled", true);
        $("#" + txtfrom.id).attr("disabled", true);
        $("#" + txtto.id).attr("disabled", true);

        EnableDisableValidator(txtnumber.id, false);
        EnableDisableValidator(txtapprovalnumber.id, false);
        EnableDisableValidator(txtfrom.id, false);
        EnableDisableValidator(txtto.id, false);
    }
}

function ValidateStatus(rbworkinprogress, rbPetitionfiled, rbReceiptnotice, rbapprovalnotice, rbExpired, txtnumber, txtapprovalnumber, txtfrom, txtto, ddlstatus, ddlupdatestatus) {
    if ($("#" + rbworkinprogress.id).is(":checked") || $("#" + rbPetitionfiled.id).is(":checked") || $("#" + rbReceiptnotice.id).is(":checked") || $("#" + rbapprovalnotice.id).is(":checked") || $("#" + rbExpired.id).is(":checked")) {
        //EnableReceiptnotice(rbReceiptnotice, rbapprovalnotice, ddlstatus, txtnumber, ddlupdatestatus, txtapprovalnumber, txtfrom, txtto);
    }
    else {
        EnableDisableValidator(txtnumber.id, false);
        EnableDisableValidator(txtapprovalnumber.id, false);
        EnableDisableValidator(txtfrom.id, false);
        EnableDisableValidator(txtto.id, false);

        AlertDialog(this, "Alert", "Please select any one status", 180, 300);
        return false;
    }
}

//Function to disable all the fields of a form
function SetReadOnly() {
    //$('#form1 input').attr('readonly', 'readonly');
    $("input").prop('disabled', true);
    $("select").prop('disabled', true);
    $("textarea").prop('disabled', true);
}

function ScrollTop() {
    $('html, body').animate({ scrollTop: 0 }, 1);
}

//function DateSelectionChanged(txtValidFrom, txtValidTo) {
//    //$("#" + txtValidTo.id).val($("#" + txtValidFrom.id).val());
//}