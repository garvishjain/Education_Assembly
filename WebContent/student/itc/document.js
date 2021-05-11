/**
 * 
 */


function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


//IMage Validation

function validateImage() {
    var formData = new FormData();
    var file = document.getElementById("img").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        alert('Please select a valid image file');
        document.getElementById("img").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 

//IMage Validation

function validateImage_1() {
    var formData = new FormData();
    var file = document.getElementById("img_1").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        alert('Please select a valid image file');
        document.getElementById("img_1").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img_1").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 

//IMage Validation

function validateImage_2() {
    var formData = new FormData();
    var file = document.getElementById("img_2").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        alert('Please select a valid image file');
        document.getElementById("img_2").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img_2").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 

//IMage Validation

function validateImage_3() {
    var formData = new FormData();
    var file = document.getElementById("img_3").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        alert('Please select a valid image file');
        document.getElementById("img_3").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img_3").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 

//IMage Validation

function validateImage_4() {
    var formData = new FormData();
    var file = document.getElementById("img_4").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        alert('Please select a valid image file');
        document.getElementById("img_4").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img_4").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 

//IMage Validation

function validateImage_5() {
    var formData = new FormData();
    var file = document.getElementById("img_5").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" ) {
        	return "Please select a valid image file";
        document.getElementById("img_5").value = '';
        return false;
    }
  
    if(file.size > 404800) {
        alert('Max Upload size is 400kb only');
        document.getElementById("img_5").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="400px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
   
 
    return true;
} 


