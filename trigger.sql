DELIMITER $$
CREATE TRIGGER actualizar_puntaje_cliente
AFTER INSERT ON factura
FOR EACH ROW
BEGIN
    UPDATE cliente SET puntaje = puntaje + NEW.cantidad WHERE documento = NEW.id_cliente;
END$$
DELIMITER ;
