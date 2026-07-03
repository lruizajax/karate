function fn() {
	// Tiempo de espera para las conexiones (5 segundos)
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);

}
