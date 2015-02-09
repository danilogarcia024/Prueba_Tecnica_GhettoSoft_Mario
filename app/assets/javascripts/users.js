$(document).ready(function(){
	$.get('users.json',function(data){
		var usuario = data[0];
		alert(usuario.Nombre+' '+usuario.Apellido);
		console.log(data);
	});
});