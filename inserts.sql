INSERT INTO Clientes (Nome, Cidade, Telefone, Email) VALUES
('Ana Souza', 'São Paulo', '11999990001', 'ana@email.com'),
('Bruno Lima', 'Rio de Janeiro', '11999990002', 'bruno@email.com'),
('Carlos Mendes', 'Curitiba', '11999990003', 'carlos@email.com');

INSERT INTO Funcionarios (Nome, Cargo, Salario) VALUES
('Mariana Alves', 'Gerente', 5500.00),
('Ricardo Lima', 'Vendedor', 3200.00);

INSERT INTO Produtos (Nome, Preco, Estoque) VALUES
('Teclado Mecânico', 250.00, 15),
('Mouse Gamer', 120.00, 30),
('Monitor 24', 900.00, 8);

INSERT INTO Pedidos (ID_Cliente, ID_Funcionario, Data_Pedido) VALUES
(1, 1, '2026-05-01'),
(2, 2, '2026-05-02'),
(3, 1, '2026-05-03');

INSERT INTO Pedido_Produtos (ID_Pedido, ID_Produto, Quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 2, 2);
