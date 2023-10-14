extends Node

func select_all(db, table_name) -> Array[Dictionary]:
	db.query("select * from " + table_name + ";")
	var result = db.query_result
	return result
