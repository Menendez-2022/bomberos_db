CREATE OR REPLACE FUNCTION Insertar_equipos_estacion (IN p_nombre_equipo integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO equipos_estacion (nombre_equipo) VALUES (p_nombre_equipo);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_equipos_estacion (IN p_equipo_id integer, IN p_nombre_equipo integer) RETURNS VOID AS $$
BEGIN
    UPDATE equipos_estacion SET nombre_equipo = p_nombre_equipo WHERE equipo_id = p_equipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_equipos_estacion (IN p_equipo_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM equipos_estacion WHERE equipo_id = p_equipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_equipos_estacion () RETURNS SETOF equipos_estacion AS $$
BEGIN
    RETURN QUERY SELECT * FROM equipos_estacion;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_llamada_tipo (IN p_tipo_llamada character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO llamada_tipo (tipo_llamada) VALUES (p_tipo_llamada);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_llamada_tipo (IN p_llamada_tipo_id integer, IN p_tipo_llamada character varying) RETURNS VOID AS $$
BEGIN
    UPDATE llamada_tipo SET tipo_llamada = p_tipo_llamada WHERE llamada_tipo_id = p_llamada_tipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_llamada_tipo (IN p_llamada_tipo_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM llamada_tipo WHERE llamada_tipo_id = p_llamada_tipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_llamada_tipo () RETURNS SETOF llamada_tipo AS $$
BEGIN
    RETURN QUERY SELECT * FROM llamada_tipo;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_mantenimiento_tipo (IN p_nombre_tipo_mantenimiento integer, IN p_descripcion integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO mantenimiento_tipo (nombre_tipo_mantenimiento, descripcion) VALUES (p_nombre_tipo_mantenimiento, p_descripcion);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_mantenimiento_tipo (IN p_mantenimiento_tipo_id integer, IN p_nombre_tipo_mantenimiento integer, IN p_descripcion integer) RETURNS VOID AS $$
BEGIN
    UPDATE mantenimiento_tipo SET nombre_tipo_mantenimiento = p_nombre_tipo_mantenimiento, descripcion = p_descripcion WHERE mantenimiento_tipo_id = p_mantenimiento_tipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_mantenimiento_tipo (IN p_mantenimiento_tipo_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM mantenimiento_tipo WHERE mantenimiento_tipo_id = p_mantenimiento_tipo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_mantenimiento_tipo () RETURNS SETOF mantenimiento_tipo AS $$
BEGIN
    RETURN QUERY SELECT * FROM mantenimiento_tipo;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_materiales (IN p_estacion_id integer, IN p_cantidad_disponible integer, IN p_cantidad_minima integer, IN p_nombre_material character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO materiales (estacion_id, cantidad_disponible, cantidad_minima, nombre_material) VALUES (p_estacion_id, p_cantidad_disponible, p_cantidad_minima, p_nombre_material);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_materiales (IN p_inventario_id integer, IN p_estacion_id integer, IN p_cantidad_disponible integer, IN p_cantidad_minima integer, IN p_nombre_material character varying) RETURNS VOID AS $$
BEGIN
    UPDATE materiales SET estacion_id = p_estacion_id, cantidad_disponible = p_cantidad_disponible, cantidad_minima = p_cantidad_minima, nombre_material = p_nombre_material WHERE inventario_id = p_inventario_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_materiales (IN p_inventario_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM materiales WHERE inventario_id = p_inventario_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_materiales () RETURNS SETOF materiales AS $$
BEGIN
    RETURN QUERY SELECT * FROM materiales;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_estaciones (IN p_nombre_estacion character varying, IN p_direccion character varying, IN p_ciudad character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO estaciones (nombre_estacion, direccion, ciudad) VALUES (p_nombre_estacion, p_direccion, p_ciudad);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_estaciones (IN p_estacion_id integer, IN p_nombre_estacion character varying, IN p_direccion character varying, IN p_ciudad character varying) RETURNS VOID AS $$
BEGIN
    UPDATE estaciones SET nombre_estacion = p_nombre_estacion, direccion = p_direccion, ciudad = p_ciudad WHERE estacion_id = p_estacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_estaciones (IN p_estacion_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM estaciones WHERE estacion_id = p_estacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_estaciones () RETURNS SETOF estaciones AS $$
BEGIN
    RETURN QUERY SELECT * FROM estaciones;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_intervenciones_emergencia (IN p_salida_id integer, IN p_reporte_incidencias_id integer, IN p_equipo_id integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO intervenciones_emergencia (salida_id, reporte_incidencias_id, equipo_id) VALUES (p_salida_id, p_reporte_incidencias_id, p_equipo_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_intervenciones_emergencia (IN p_intervencion_id integer, IN p_salida_id integer, IN p_reporte_incidencias_id integer, IN p_equipo_id integer) RETURNS VOID AS $$
BEGIN
    UPDATE intervenciones_emergencia SET salida_id = p_salida_id, reporte_incidencias_id = p_reporte_incidencias_id, equipo_id = p_equipo_id WHERE intervencion_id = p_intervencion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_intervenciones_emergencia (IN p_intervencion_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM intervenciones_emergencia WHERE intervencion_id = p_intervencion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_intervenciones_emergencia () RETURNS SETOF intervenciones_emergencia AS $$
BEGIN
    RETURN QUERY SELECT * FROM intervenciones_emergencia;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_reportes_incidencias (IN p_estacion_id integer, IN p_equipo_id integer, IN p_fecha date, IN p_descripcion text) RETURNS VOID AS $$
BEGIN
    INSERT INTO reportes_incidencias (estacion_id, equipo_id, fecha, descripcion) VALUES (p_estacion_id, p_equipo_id, p_fecha, p_descripcion);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_reportes_incidencias (IN p_reporte_incidencias_id integer, IN p_estacion_id integer, IN p_equipo_id integer, IN p_fecha date, IN p_descripcion text) RETURNS VOID AS $$
BEGIN
    UPDATE reportes_incidencias SET estacion_id = p_estacion_id, equipo_id = p_equipo_id, fecha = p_fecha, descripcion = p_descripcion WHERE reporte_incidencias_id = p_reporte_incidencias_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_reportes_incidencias (IN p_reporte_incidencias_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM reportes_incidencias WHERE reporte_incidencias_id = p_reporte_incidencias_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_reportes_incidencias () RETURNS SETOF reportes_incidencias AS $$
BEGIN
    RETURN QUERY SELECT * FROM reportes_incidencias;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_llamadas_usuario (IN p_tipo_llamada_id integer, IN p_estacion_id integer, IN p_llamada_fecha date, IN p_llamada_descripcion text) RETURNS VOID AS $$
BEGIN
    INSERT INTO llamadas_usuario (tipo_llamada_id, estacion_id, llamada_fecha, llamada_descripcion) VALUES (p_tipo_llamada_id, p_estacion_id, p_llamada_fecha, p_llamada_descripcion);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_llamadas_usuario (IN p_llamada_usuario_id integer, IN p_tipo_llamada_id integer, IN p_estacion_id integer, IN p_llamada_fecha date, IN p_llamada_descripcion text) RETURNS VOID AS $$
BEGIN
    UPDATE llamadas_usuario SET tipo_llamada_id = p_tipo_llamada_id, estacion_id = p_estacion_id, llamada_fecha = p_llamada_fecha, llamada_descripcion = p_llamada_descripcion WHERE llamada_usuario_id = p_llamada_usuario_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_llamadas_usuario (IN p_llamada_usuario_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM llamadas_usuario WHERE llamada_usuario_id = p_llamada_usuario_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_llamadas_usuario () RETURNS SETOF llamadas_usuario AS $$
BEGIN
    RETURN QUERY SELECT * FROM llamadas_usuario;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_mantenimientos (IN p_mantenimiento_tipo_id integer, IN p_organizacion_mantenimiento integer, IN p_vehiculo_id integer, IN p_mantenimiento_costo double precision, IN p_mantenimiento_fecha character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO mantenimientos (mantenimiento_tipo_id, organizacion_mantenimiento, vehiculo_id, mantenimiento_costo, mantenimiento_fecha) VALUES (p_mantenimiento_tipo_id, p_organizacion_mantenimiento, p_vehiculo_id, p_mantenimiento_costo, p_mantenimiento_fecha);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_mantenimientos (IN p_mantenimiento_id integer, IN p_mantenimiento_tipo_id integer, IN p_organizacion_mantenimiento integer, IN p_vehiculo_id integer, IN p_mantenimiento_costo double precision, IN p_mantenimiento_fecha character varying) RETURNS VOID AS $$
BEGIN
    UPDATE mantenimientos SET mantenimiento_tipo_id = p_mantenimiento_tipo_id, organizacion_mantenimiento = p_organizacion_mantenimiento, vehiculo_id = p_vehiculo_id, mantenimiento_costo = p_mantenimiento_costo, mantenimiento_fecha = p_mantenimiento_fecha WHERE mantenimiento_id = p_mantenimiento_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_mantenimientos (IN p_mantenimiento_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM mantenimientos WHERE mantenimiento_id = p_mantenimiento_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_mantenimientos () RETURNS SETOF mantenimientos AS $$
BEGIN
    RETURN QUERY SELECT * FROM mantenimientos;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_organizacion_mantenimiento (IN p_nombre integer, IN p_direccion character varying, IN p_telefono character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO organizacion_mantenimiento (nombre, direccion, telefono) VALUES (p_nombre, p_direccion, p_telefono);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_organizacion_mantenimiento (IN p_organizacion_mantenimiento_id integer, IN p_nombre integer, IN p_direccion character varying, IN p_telefono character varying) RETURNS VOID AS $$
BEGIN
    UPDATE organizacion_mantenimiento SET nombre = p_nombre, direccion = p_direccion, telefono = p_telefono WHERE organizacion_mantenimiento_id = p_organizacion_mantenimiento_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_organizacion_mantenimiento (IN p_organizacion_mantenimiento_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM organizacion_mantenimiento WHERE organizacion_mantenimiento_id = p_organizacion_mantenimiento_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_organizacion_mantenimiento () RETURNS SETOF organizacion_mantenimiento AS $$
BEGIN
    RETURN QUERY SELECT * FROM organizacion_mantenimiento;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_participantes_formaciones (IN p_sesion_formacion_id integer, IN p_bombero_id integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO participantes_formaciones (sesion_formacion_id, bombero_id) VALUES (p_sesion_formacion_id, p_bombero_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_participantes_formaciones (IN p_participante_formacion_id integer, IN p_sesion_formacion_id integer, IN p_bombero_id integer) RETURNS VOID AS $$
BEGIN
    UPDATE participantes_formaciones SET sesion_formacion_id = p_sesion_formacion_id, bombero_id = p_bombero_id WHERE participante_formacion_id = p_participante_formacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_participantes_formaciones (IN p_participante_formacion_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM participantes_formaciones WHERE participante_formacion_id = p_participante_formacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_participantes_formaciones () RETURNS SETOF participantes_formaciones AS $$
BEGIN
    RETURN QUERY SELECT * FROM participantes_formaciones;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_participantes_incidencias (IN p_reporte_incidencias_id integer, IN p_bombero_id integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO participantes_incidencias (reporte_incidencias_id, bombero_id) VALUES (p_reporte_incidencias_id, p_bombero_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_participantes_incidencias (IN p_participante_id integer, IN p_reporte_incidencias_id integer, IN p_bombero_id integer) RETURNS VOID AS $$
BEGIN
    UPDATE participantes_incidencias SET reporte_incidencias_id = p_reporte_incidencias_id, bombero_id = p_bombero_id WHERE participante_id = p_participante_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_participantes_incidencias (IN p_participante_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM participantes_incidencias WHERE participante_id = p_participante_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_participantes_incidencias () RETURNS SETOF participantes_incidencias AS $$
BEGIN
    RETURN QUERY SELECT * FROM participantes_incidencias;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_registro_asistencias (IN p_jornada_id integer, IN p_bombero_id integer, IN p_asistencia_fecha date, IN p_asistencia_tipo character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO registro_asistencias (jornada_id, bombero_id, asistencia_fecha, asistencia_tipo) VALUES (p_jornada_id, p_bombero_id, p_asistencia_fecha, p_asistencia_tipo);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_registro_asistencias (IN p_registro_asistencia_id integer, IN p_jornada_id integer, IN p_bombero_id integer, IN p_asistencia_fecha date, IN p_asistencia_tipo character varying) RETURNS VOID AS $$
BEGIN
    UPDATE registro_asistencias SET jornada_id = p_jornada_id, bombero_id = p_bombero_id, asistencia_fecha = p_asistencia_fecha, asistencia_tipo = p_asistencia_tipo WHERE registro_asistencia_id = p_registro_asistencia_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_registro_asistencias (IN p_registro_asistencia_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM registro_asistencias WHERE registro_asistencia_id = p_registro_asistencia_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_registro_asistencias () RETURNS SETOF registro_asistencias AS $$
BEGIN
    RETURN QUERY SELECT * FROM registro_asistencias;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_jornadas_trabajo (IN p_fecha date, IN p_fecha_jornada timestamp without time zone, IN p_fin_jornada timestamp without time zone) RETURNS VOID AS $$
BEGIN
    INSERT INTO jornadas_trabajo (fecha, fecha_jornada, fin_jornada) VALUES (p_fecha, p_fecha_jornada, p_fin_jornada);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_jornadas_trabajo (IN p_jornada_id integer, IN p_fecha date, IN p_fecha_jornada timestamp without time zone, IN p_fin_jornada timestamp without time zone) RETURNS VOID AS $$
BEGIN
    UPDATE jornadas_trabajo SET fecha = p_fecha, fecha_jornada = p_fecha_jornada, fin_jornada = p_fin_jornada WHERE jornada_id = p_jornada_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_jornadas_trabajo (IN p_jornada_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM jornadas_trabajo WHERE jornada_id = p_jornada_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_jornadas_trabajo () RETURNS SETOF jornadas_trabajo AS $$
BEGIN
    RETURN QUERY SELECT * FROM jornadas_trabajo;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_sesiones_formacion (IN p_nombre_sesion integer, IN p_fecha date, IN p_duracion integer) RETURNS VOID AS $$
BEGIN
    INSERT INTO sesiones_formacion (nombre_sesion, fecha, duracion) VALUES (p_nombre_sesion, p_fecha, p_duracion);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_sesiones_formacion (IN p_sesion_formacion_id integer, IN p_nombre_sesion integer, IN p_fecha date, IN p_duracion integer) RETURNS VOID AS $$
BEGIN
    UPDATE sesiones_formacion SET nombre_sesion = p_nombre_sesion, fecha = p_fecha, duracion = p_duracion WHERE sesion_formacion_id = p_sesion_formacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_sesiones_formacion (IN p_sesion_formacion_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM sesiones_formacion WHERE sesion_formacion_id = p_sesion_formacion_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_sesiones_formacion () RETURNS SETOF sesiones_formacion AS $$
BEGIN
    RETURN QUERY SELECT * FROM sesiones_formacion;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_vehiculos (IN p_tipo_vehiculo_id integer, IN p_estacion_id integer, IN p_año_fabricacion integer, IN p_marca character varying, IN p_modelo character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO vehiculos (tipo_vehiculo_id, estacion_id, año_fabricacion, marca, modelo) VALUES (p_tipo_vehiculo_id, p_estacion_id, p_año_fabricacion, p_marca, p_modelo);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_vehiculos (IN p_vehiculo_id integer, IN p_tipo_vehiculo_id integer, IN p_estacion_id integer, IN p_año_fabricacion integer, IN p_marca character varying, IN p_modelo character varying) RETURNS VOID AS $$
BEGIN
    UPDATE vehiculos SET tipo_vehiculo_id = p_tipo_vehiculo_id, estacion_id = p_estacion_id, año_fabricacion = p_año_fabricacion, marca = p_marca, modelo = p_modelo WHERE vehiculo_id = p_vehiculo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_vehiculos (IN p_vehiculo_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM vehiculos WHERE vehiculo_id = p_vehiculo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_vehiculos () RETURNS SETOF vehiculos AS $$
BEGIN
    RETURN QUERY SELECT * FROM vehiculos;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_tipo_vehiculos (IN p_tipo_vehiculo character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO tipo_vehiculos (tipo_vehiculo) VALUES (p_tipo_vehiculo);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_tipo_vehiculos (IN p_tipo_vehiculo_id integer, IN p_tipo_vehiculo character varying) RETURNS VOID AS $$
BEGIN
    UPDATE tipo_vehiculos SET tipo_vehiculo = p_tipo_vehiculo WHERE tipo_vehiculo_id = p_tipo_vehiculo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_tipo_vehiculos (IN p_tipo_vehiculo_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM tipo_vehiculos WHERE tipo_vehiculo_id = p_tipo_vehiculo_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_tipo_vehiculos () RETURNS SETOF tipo_vehiculos AS $$
BEGIN
    RETURN QUERY SELECT * FROM tipo_vehiculos;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_rangos (IN p_nombre_rango character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO rangos (nombre_rango) VALUES (p_nombre_rango);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_rangos (IN p_rango_id integer, IN p_nombre_rango character varying) RETURNS VOID AS $$
BEGIN
    UPDATE rangos SET nombre_rango = p_nombre_rango WHERE rango_id = p_rango_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_rangos (IN p_rango_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM rangos WHERE rango_id = p_rango_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_rangos () RETURNS SETOF rangos AS $$
BEGIN
    RETURN QUERY SELECT * FROM rangos;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_bomberos (IN p_rango_id integer, IN p_edad integer, IN p_apellido character varying, IN p_correo character varying, IN p_genero character varying, IN p_telefono character varying, IN p_nombre character varying) RETURNS VOID AS $$
BEGIN
    INSERT INTO bomberos (rango_id, edad, apellido, correo, genero, telefono, nombre) VALUES (p_rango_id, p_edad, p_apellido, p_correo, p_genero, p_telefono, p_nombre);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_bomberos (IN p_bombero_id integer, IN p_rango_id integer, IN p_edad integer, IN p_apellido character varying, IN p_correo character varying, IN p_genero character varying, IN p_telefono character varying, IN p_nombre character varying) RETURNS VOID AS $$
BEGIN
    UPDATE bomberos SET rango_id = p_rango_id, edad = p_edad, apellido = p_apellido, correo = p_correo, genero = p_genero, telefono = p_telefono, nombre = p_nombre WHERE bombero_id = p_bombero_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_bomberos (IN p_bombero_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM bomberos WHERE bombero_id = p_bombero_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_bomberos () RETURNS SETOF bomberos AS $$
BEGIN
    RETURN QUERY SELECT * FROM bomberos;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Insertar_salidas_emergencia (IN p_reporte_incidencias_id integer, IN p_vehiculo_id integer, IN p_bombero_id integer, IN p_fecha date, IN p_hora_salida timestamp without time zone, IN p_hora_llegada timestamp without time zone) RETURNS VOID AS $$
BEGIN
    INSERT INTO salidas_emergencia (reporte_incidencias_id, vehiculo_id, bombero_id, fecha, hora_salida, hora_llegada) VALUES (p_reporte_incidencias_id, p_vehiculo_id, p_bombero_id, p_fecha, p_hora_salida, p_hora_llegada);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Actualizar_salidas_emergencia (IN p_salida_id integer, IN p_reporte_incidencias_id integer, IN p_vehiculo_id integer, IN p_bombero_id integer, IN p_fecha date, IN p_hora_salida timestamp without time zone, IN p_hora_llegada timestamp without time zone) RETURNS VOID AS $$
BEGIN
    UPDATE salidas_emergencia SET reporte_incidencias_id = p_reporte_incidencias_id, vehiculo_id = p_vehiculo_id, bombero_id = p_bombero_id, fecha = p_fecha, hora_salida = p_hora_salida, hora_llegada = p_hora_llegada WHERE salida_id = p_salida_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Eliminar_salidas_emergencia (IN p_salida_id integer) RETURNS VOID AS $$
BEGIN
    DELETE FROM salidas_emergencia WHERE salida_id = p_salida_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ObtenerTodos_salidas_emergencia () RETURNS SETOF salidas_emergencia AS $$
BEGIN
    RETURN QUERY SELECT * FROM salidas_emergencia;
END;
$$ LANGUAGE plpgsql;

