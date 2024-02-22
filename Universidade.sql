


	CREATE DATABASE bdUniversidade
	USE bdUniversidade


		CREATE TABLE tbAluno(

		codAluno INT PRIMARY KEY IDENTITY(1,1)
			,nomeAluno VARCHAR(30) NOT NULL
			,dataNascimentoAluno DATETIME 	NOT NULL
		   ,rgAluno VARCHAR(20)		NOT NULL
		   )
 		CREATE TABLE tbTurma(
			codTurma INT PRIMARY KEY IDENTITY(1,1)  NOT NULL
			,numeroTurma VARCHAR(10)  NOT NULL
			,anodeFormacaoTurma DATETIME NOT NULL

	)
	   
		CREATE TABLE tbCurso(
			codCurso INT PRIMARY KEY IDENTITY(1,1)   NOT NULL
			,nomeCurso VARCHAR(20)  NOT NULL
			,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
	)
		CREATE TABLE tbProfessor(
		codProfessor INT PRIMARY KEY  IDENTITY (1,1) NOT NULL
		,nomeAluno VARCHAR(30) NOT NULL
	 	,rgProfessor VARCHAR(20)		NOT NULL
		)
		CREATE TABLE tbDisciplina(
		codDisciplina INT PRIMARY KEY IDENTITY (1,1)NOT NULL
		,descDisciplina VARCHAR(30) NOT NULL
		,codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
		,codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor)
		
		)
		
		
