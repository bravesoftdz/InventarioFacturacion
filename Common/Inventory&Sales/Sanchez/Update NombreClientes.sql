/*

Answer: :PRIV:ANSWER.DB
AuxTables: False
RunMode: Default
Alias: WORK
LiveAnswer: FALSE

*/

Update Facturas Set NombreClientes = (Select Nombre + ' ' + Apellido From Clientes Where Clientes.Codigo = Facturas.Cliente)
