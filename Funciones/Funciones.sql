CREATE OR REPLACE FUNCTION after_insert_update_delete()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO auditoria_restaurantes (id_auditoria, operacion, fecha, usuario)
        VALUES (nextval('auditoria_id_seq'), 'INSERT', CURRENT_TIMESTAMP, current_user);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO auditoria_restaurantes (id_auditoria, operacion, fecha, usuario)
        VALUES (nextval('auditoria_id_seq'), 'UPDATE', CURRENT_TIMESTAMP, current_user);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO auditoria_restaurantes (id_auditoria, operacion, fecha, usuario)
        VALUES (nextval('auditoria_id_seq'), 'DELETE', CURRENT_TIMESTAMP, current_user);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
