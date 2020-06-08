function Validation() {

    var id, name, role, es1, el1, es2, el2, es3, el3, pn1, ps1, pl1, pn2, ps2, pl2, pn3, ps3, pl3;

    document.getElementById("eid").focus;

    id = document.getElementById("eid").value;

    name = document.getElementById("ename").value;

    role = document.getElementById("erole").value;

    skill1 = document.getElementById("skill1").value;

    level1 = document.getElementById("level1").value;

    skill2 = document.getElementById("skill2").value;

    level2 = document.getElementById("level2").value;

    skill3 = document.getElementById("skill3").value;

    level3 = document.getElementById("level3").value;

    ps1 = document.getElementById("ps1").value;
    
    pl1 = document.getElementById("pl1").value;
    
    ps2 = document.getElementById("ps2").value;
    
    pl2 = document.getElementById("pl2").value;
    
    ps3 = document.getElementById("ps3").value;
    
    pl3 = document.getElementById("pl3").value;
    
    pn1 = document.getElementById("pname1").value;
    
    pn2 = document.getElementById("pname2").value;
    
    pn3 = document.getElementById("pname3").value;

    var isnum = /^\d+$/.test(id);

    if (id == '') {

        alert("Please Enter Employee ID:");

        return false;

    }

    else if (isnum == false) {

        alert("Check employee ID");

        return false;

    }

    else if (name == '') {

        alert("Please enter Employee Name");

        return false;

    }

    else if (role == '') {

        alert("Please Enter Employee Role:");

        return false;

    }

    else if (skill1 == '-1') {

        alert("Please Enter Employee Skill:");

        return false;

    }

    else if (skill2 == '-1') {

        alert("Please Enter Employee Skill:");

        return false;

    }

    else if (skill3 == '-1') {

        alert("Please Enter Employee Skill:");

        return false;

    }

    else if (level1 == '-1') {

        alert("Please Enter Employee Skill Level:");

        return false;

    }

    else if (level2 == '-1') {

        alert("Please Enter Employee Skill Level:");

        return false;

    }

    else if (level3 == '-1') {

        alert("Please Enter Employee Skill Level:");

        return false;

    }

    if (ps1 == '-1') {
    
    alert("Please Enter Project Skill Requirement");
    
    return false;
    
    }
    
    if (ps2 == '-1') {
    
    alert("Please Enter Project Skill Requirement");
    
    return false;
    
    }
    
    if (ps3 == '-1') {
    
    alert("Please Enter Project Skill Requirement");
    
    return false;
    
    }
    
    if (pl1 == 'NA') {
    
    alert("Please Enter Project Skill Level Requirement");
    
    return false;
    
    }
    
    
    if (pn1 == '') {
    
    alert("Please Enter at least one project!");
    
    return false;
    
    }

}

function inlinetxt(p) {

    var isnum = /^\d+$/.test(id);

    var l = p.value.length;

    if (isnum.test(p.value) == false)

        p.style.backgroundColor = '#70db70';

    else

        p.style.backgroundColor = '#70db70';

}

function checkInput(fname) {

    var s = fname.value;

    if (s.length == 0)
        fname.style.backgroundColor = "#555";

    for (var i = 0; i < s.length; i++) {

        var ch = s.charAt(i);

        var ch0 = s.charAt(0);

        if (ch0 >= 'a' && ch0 <= 'z' || ch0 >= 'A' && ch0 <= 'Z') {

            fname.style.backgroundColor = '#70db70';

        }

        else {

            fname.style.backgroundColor = '#fb575b';

            continue;

        }

        if (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' || ch == ' ')

            fname.style.backgroundColor = '#70db70';

        else {

            fname.style.backgroundColor = '#fb575b';

            break;

        }

    }

}

function idcheck(id) {

    var s = id.value;

    if (s.length == 0)

        id.style.backgroundColor = '#555';

    for (var i = 0; i < s.length; i++) {

        var ch = s.charAt(i);

        if (s.charAt(0) >= 0 && s.charAt(0) <= 9) {

            id.style.backgroundColor = '#70db70';

        }

        else {

            id.style.backgroundColor = '#fb575b';

            continue;

        }

        if (ch >= 0 && ch <= 9)

            id.style.backgroundColor = '#70db70';

        else {

            id.style.backgroundColor = '#fb575b';

            break;

        }

    }

}
function idfocus(id) {

    document.getElementById("eid").focus();
}