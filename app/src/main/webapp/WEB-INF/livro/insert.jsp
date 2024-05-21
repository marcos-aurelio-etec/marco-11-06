<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
    </head>
    <body>
        <h1>Novo Livro</h1>

        <form action="/livros/insert" method="post">
            <div>
                <label for="nome">Título do Livro</label>
                <input type="text" id="titulo" name="titulo" placeholder="Digite o título do Livro" />
            </div>
            <label for="generos">Selecione o gênero do livro</label>
            <select name="genero" id="generos">
                <c:forEach var="item" items="${generos}">
                    <option value="${item.id}">${item.nome}</option>
                </c:forEach>
            </select>
            <button type="submit">Salvar</button>
       
            </form>
            <br />
            <a href="/livros/list">Voltar</a>
        </form>
    </body>
</html>

