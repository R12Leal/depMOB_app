<?php
  //
  include('./lib/xcrud/xcrud.php');
  //
  $xcrud = Xcrud::get_instance();
  $xcrud->language('es');
  $xcrud->table('orden');
  $xcrud->table_name('Lista de Órdenes', 'Some tooltip text','icon-leaf');
  $xcrud->columns('idOrden, nExpediente, nDecreto, idEmpresa, idSituacion, data_ini, data_fin, estado');
  $xcrud->unset_numbers();
  $xcrud->order_by('idOrden','desc');
  $xcrud->change_type('comentario', 'textarea');
  //
  $xcrud->label('idOrden','Nº de Orden');
  $xcrud->label('nExpediente','Nº Expediente');
  $xcrud->label('nDecreto','Nº Decreto');
  $xcrud->label('idEmpresa','Tipo de Empresa');
  $xcrud->label('idSituacion','Zona');
  $xcrud->label('data_ini','Fecha de Inicio');
  $xcrud->label('data_fin','Fecha Fin');
  $xcrud->label('estado','Estado');
  $xcrud->relation('idEmpresa','empresa','idEmpresa','nEmpresa');
  $xcrud->relation('idSituacion','situacion','idSituacion',array('nCalle','nNum','nBarriada'),null,null,null,' - ');
  //
  $list_tra = $xcrud->nested_table('list_tra','idOrden','ord_tra_sit','idOrden');
  $list_tra->table_name('Trabajos asignados');
  $list_tra->language('es');
  $list_tra->relation('idTrabajo','trabajo','idTrabajo','nTrabajo');
  $list_tra->columns('idTrabajo, ot_data_ini, ot_data_fin, cantidad,precio');
  $list_tra->unset_view();
  //
  $list_tra->label('idOrden','Nº de Orden');
  $list_tra->label('idTrabajo','Nombre');
  $list_tra->label('ot_data_ini','Fecha de Inicio');
  $list_tra->label('ot_data_fin','Fecha Fin');
  $list_tra->label('cantidad','Cantidad');
  $list_tra->label('precio','Precio (€)');
  $list_tra->change_type('idOrden','none');
  //
?>
