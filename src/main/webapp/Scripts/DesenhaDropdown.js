class DesenhaDropdown extends Viewer{
    constructor(elemento){
        super(elemento)
    }

    formato(model){
		
        var listaParagrafos = []
        for (let i=0; i< model.length; i++){
            let item = model[i];
			if(item.plataforma){
				 listaParagrafos.push(                                
                `<p id="${item.idFilme}" class="item_pesquisa hidden" onclick='pesquisa.selectPesquisa("${item.idProduto}")'>${item.nome}, ${item.plataforma}</p>`
           		 )
            				
			}
			if(item.tecnologia){
				listaParagrafos.push(                                
                `<p id="${item.idFilme}" class="item_pesquisa hidden" onclick='pesquisa.selectPesquisa("${item.idProduto}")'>${item.nome}, ${item.tecnologia}</p>`
           		 )
            		
			}
           
        }
       	
        return listaParagrafos.join('')
    }
    update(model){
        this._elemento.innerHTML = this.formato(model)
    }
}