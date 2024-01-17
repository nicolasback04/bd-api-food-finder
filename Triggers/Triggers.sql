CREATE TRIGGER restaurante_audit
AFTER INSERT OR UPDATE OR DELETE ON restaurantes
FOR EACH ROW
EXECUTE FUNCTION after_insert_update_delete();
