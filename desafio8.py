def generateMonthlyPathList(year, month, day):
	path_base="https://importantdata@location"
	lista_de_paths=[]
	dia=int(day)+1
	for i in range(1, dia):
		lista_de_paths.append( f"{path_base}/{year}/{month}/{i}/" )
	return lista_de_paths
generateMonthlyPathList("2021","05","17")