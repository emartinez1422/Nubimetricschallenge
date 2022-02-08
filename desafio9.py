import datetime

def generateLastDaysPaths(date:str, days:int):
    final = datetime.datetime.strptime(date, '%Y%m%d')
    path_base="https://importantdata@location/"
    inicio= final - datetime.timedelta(days=days)
    lista_de_paths=[f"{path_base}/{inicio.year}/{inicio.month}/{inicio.day}/"]

    while inicio < final:
        inicio= inicio + datetime.timedelta(days=1)
        lista_de_paths.append( f"{path_base}/{inicio.year}/{inicio.month}/{inicio.day}/" )
    return lista_de_paths


generateLastDaysPaths("20210410",10)