-- Ver todos os clientes
SELECT * FROM Clientes;

-- Clientes ordenados por nome
SELECT * FROM Clientes
ORDER BY Nome ASC;

-- Produtos com preço maior que 200
SELECT * FROM Produtos
WHERE Preco > 200;

-- Produtos com estoque menor que 20
SELECT * FROM Produtos
WHERE Estoque < 20;

-- Quantidade total de clientes
SELECT COUNT(*) AS Total_Clientes
FROM Clientes;

-- Média de preço dos produtos
SELECT AVG(Preco) AS Media_Preco
FROM Produtos;

-- Produtos mais caros primeiro
SELECT * FROM Produtos
ORDER BY Preco DESC;

-- INNER JOIN entre pedidos e clientes
SELECT 
    Pedidos.ID_Pedido,
    Clientes.Nome,
    Pedidos.Data_Pedido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ID_Cliente = Clientes.ID_Cliente;

-- INNER JOIN completo
SELECT
    Clientes.Nome AS Cliente,
    Produtos.Nome AS Produto,
    Pedido_Produtos.Quantidade
FROM Pedido_Produtos
INNER JOIN Pedidos
ON Pedido_Produtos.ID_Pedido = Pedidos.ID_Pedido
INNER JOIN Clientes
ON Pedidos.ID_Cliente = Clientes.ID_Cliente
INNER JOIN Produtos
ON Pedido_Produtos.ID_Produto = Produtos.ID_Produto;

-- LEFT JOIN
SELECT
    Clientes.Nome,
    Pedidos.ID_Pedido
FROM Clientes
LEFT JOIN Pedidos
ON Clientes.ID_Cliente = Pedidos.ID_Cliente;

-- GROUP BY
SELECT 
    ID_Cliente,
    COUNT(*) AS Total_Pedidos
FROM Pedidos
GROUP BY ID_Cliente;

-- HAVING
SELECT 
    ID_Cliente,
    COUNT(*) AS Total_Pedidos
FROM Pedidos
GROUP BY ID_Cliente
HAVING COUNT(*) >= 1;

-- CASE
SELECT
    Nome,
    Preco,
    CASE
        WHEN Preco >= 500 THEN 'Produto Caro'
        ELSE 'Produto Barato'
    END AS Categoria
FROM Produtos;

-- LIMIT
SELECT * FROM Produtos
LIMIT 2;
