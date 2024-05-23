/**
 * Shows the error message of an ID
 * @param {*} id ID where message is displayed
 */
function showMessage(id) {
    document.getElementById(''+id+'Help').style.visibility='visible';
}

/**
 * Hides the error message of an ID
 * @param {*} id ID where message is hidden
 */
function hideMessage(id) {
    document.getElementById(''+id+'Help').style.visibility='hidden';
}

/**
 * Validates email
 * @returns TRUE: Email is valid | FALSE: Email is not valid
 */
function emailValidation() {
    const emailPattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    let email = document.getElementById('email').value;

    if (email == '' || !emailPattern.test(email)) {
        showMessage('email');
        return false;
    } else {
        hideMessage('email');
        return true;
    }
}

/**
 * Validates password
 * @returns TRUE: Password is valid | FALSE: Password is not valid
 */
function passwordValidation() {
    const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$/;
    let password = document.getElementById('new_password').value;

    if (!passwordPattern.test(password)) {
        showMessage('new_password');
        return false;
    } else {
        hideMessage('new_password');
        return true;
    }
}

function confirmarBaja() {
	let confirmar = confirm("¿Estás seguro que quieres dar de baja al usuario?");
	return confirmar;
}