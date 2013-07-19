# Grupo
- 21103917 Bernardo Leitão
- 21104555 Yasmine Chede
- 21105733 Carlos Pinto

Manual de Utilização:
1. Abrir o Eclipse IDE for Java Developers
2. Importar a aplicação através do Import -> Maven -> Existing Maven Projects (Selecionar a localização do ficheiro e 'Finish')
3. Abrir o apache (eu utilizei wamp)
4. Criar uma base de dados com o nome cookbookmanager
5. Voltar ao eclipse e clicar com o lado direito do rato onde diz 'Cookbook_LEI' -> run as -> maven build...
6. Na localização onde diz 'Goals:' escreve-se o seguinte comando: clean dml generate-domain e de seguinda em run
7. Verificar na BD se as tabelas foram criadas
8. Caso tenha corrido tudo bem na localização onde diz 'Goals:' escreve-se o seguinte comando: clean package jetty:start e de seguinda em run

URL para visualização de imagens da aplicação:
https://mega.co.nz/#!YNxCHIBI!Iyg8nScBZRetRIe02HKiFj_-gTMfBkbSzCv_xeWEj08