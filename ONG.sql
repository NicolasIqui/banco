CREATE DATABASE bdOng
	USE bdOng
		--DROP DATABASE bdOng

		CREATE TABLE tbStatusCrianca(
			codStatusCrianca INT PRIMARY KEY IDENTITY(1,1)
			,descricaoStatus VARCHAR(20) NOT NULL
		
		
		)

		CREATE TABLE tbCrianca(
			codCrianca INT PRIMARY KEY IDENTITY(1,1)
			,nomeCrianca VARCHAR(30) NOT NULL
			,dataNascimentoCrianca DATETIME NOT NULL
			,sexoCrianca VARCHAR(15) NOT NULL
			,codStatusCrianca  INT FOREIGN KEY REFERENCES tbStatusCrianca(codStatusCrianca)NOT NULL
	)
	CREATE TABLE tbGenitor(
	codGenitor INT PRIMARY KEY IDENTITY (1,1)NOT NULL
	,nomeGenitor VARCHAR(30)NOT NULL
	,cpfGenitor VARCHAR(30)NOT NULL
	)
	CREATE TABLE tbFiliacao(
	codFiliacao INT PRIMARY KEY IDENTITY (1,1)NOT NULL
	,codCrianca  INT FOREIGN KEY REFERENCES tbCrianca(codCrianca) NOT NULL
	,codGenitor INT FOREIGN KEY REFERENCES tbGenitor(codGenitor) NOT NULL
	)
	CREATE TABLE  tbPadrinho(
	codPadrinho INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomePadrinho VARCHAR(30) NOT NULL
	,cpfPadrinho VARCHAR(20)NOT NULL
	)

	CREATE TABLE tbApadrinhamento(
	codApadrinhamento INT PRIMARY KEY IDENTITY (1,1)NOT NULL
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca) NOT NULL
	,codPadrinho INT FOREIGN KEY REFERENCES tbPadrinho(codPadrinho) NOT NULL
	,dataApadrinhamento DATETIME NOT NULL
	)

	CREATE TABLE tbProntuario(
	codProntuario INT PRIMARY KEY IDENTITY  (1,1) NOT NULL
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca) NOT NULL
	,obsProntuario VARCHAR(100) NOT NULL
	)
	CREATE TABLE tbDoenca(	
	codDoenca INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeDoenca VARCHAR(30) NOT NULL
	,cid VARCHAR(50) NOT NULL
	)
	CREATE TABLE tbProntuarioDoenca(
	codProntuarioDoenca INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,codPrountuario INT FOREIGN KEY REFERENCES tbProntuario(codProntuario) NOT NULL
	,codDoenca INT FOREIGN KEY REFERENCES tbDoenca(codDoenca) NOT NULL
	)

	CREATE TABLE tbObservacaoCrianca(
	codObservacaoCrianca INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca) NOT NULL
	,observacaoCrianca VARCHAR(30) NOT NULL
	,dataObservacao DATETIME NOT NULL
	)

	
	
