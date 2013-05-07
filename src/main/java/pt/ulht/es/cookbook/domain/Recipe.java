package pt.ulht.es.cookbook.domain;

import java.util.Date;


public class Recipe {
	private String id;
	private String titulo;
	private String problema;
	private String solucao;
	
	private Date dataCriacao;

	public Recipe(String titulo, String problema, String solucao, Date dataCriacao) {
		this.titulo=titulo;
		this.problema=problema;
		this.solucao=solucao;
		this.dataCriacao=dataCriacao;
	}
	
	public Date getDataCriacao(){
		return dataCriacao;
	}
	
	public String getTitulo(){
		return titulo;
	}
	
	public String getProblema(){
		return problema;
	}
	
	public String getSolucao(){
		return solucao;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id=id;
	}

}
