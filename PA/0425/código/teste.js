var count = 0, count2 = 0, resultado = '';

        while(count <= 10){
            while(count2 <= 10){
				if(count2 === 10){
					resultado += count2 + '.';
				} else {
					resultado += count2 + ",";
					
				}
				count2++;
            }
			let str = count + ',' + resultado
            count++;
			console.log(str)
        }