Instalação RobotFramework:

    01. Baixe e instale a ferramenta "GIT";
        * https://git-scm.com/download/win
        
    02. Baixe e instale a ferramenta "VISUAL STUDIO CODE";
        * Download do instalador: https://code.visualstudio.com/download#
        
    03. Configure o "Visual Studio Code". Acesse a opção "Extensões" procure, instale e ative:
        * Robot Framework Language Server		publisher: "Robocorp"
        * Python					            publisher: "Microsoft
        * Git Extension Pack 				    publisher: "Don Jayamanne"
        * Git History 					        publisher: "Don Jayamanne"
        * GitLens — Git supercharged 			publisher: "GitKraken"
        * Material Icon Theme 				    publisher: "Philipp Kief"

Instalação e configuração da IDE

    04. Download do instalador: https://www.python.org/downloads/
    05. Executar o instalador: python-3.12.2-amd64.exe
        * Marcar a opção: Add Python 3.12.2 to PATH.
        * Clicar em Install Now
    06. Acessar as variáveis de ambiente do windows e verificar se foram criadas as variáveis do python, deve existir os caminhos no PATH
        * C:\Users\NOMEDOUSUARIO\AppData\Local\Programs\Python\Python312
        * C:\Users\NOMEDOUSUARIO\AppData\Local\Programs\Python\Python312\Scripts
    07. Execute os comandos no pront de comando como administrador: 
        * Pront de comando: pip install --upgrade pip
        * Pront de comando: pip install robotframework
        * Pront de comando: pip install --upgrade robotframework-seleniumlibrary
        * Pront de comando: pip install robotframework-faker
    08. Baixar drive (chromedriver) Google Chrome: https://chromedriver.chromium.org/downloads
        * Baixar a versão mais atual para WINDOWS
        * Descompactar o arquivo
        * Salvar o arquivo "chromedriver" na pasta scripts: C:\Users\NOMEDOUSUARIO\AppData\Local\Programs\Python\Python312\Scripts\
    
Configuração do projeto

    09. Precisamos definir onde o projeto será executado, pra isso crie uma nova pasta na máquina, o nome da pasta não pode ter caracteres especiais.
        11. Dentro da nova pasta, abra uma janela do prompt de comando como administrador, com o caminho direcionado para a raiz dessa nova pasta criada. 
        12. Execute no prompt de comando, o comando a seguir:
        * Promt de comando: git clone https://github.com/WylkerReis/Parana_Tech.git