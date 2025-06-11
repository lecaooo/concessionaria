import os
import csv

caixa_file = "caixa.csv"
caixa_inicial = 850000

#Definine função de criar um arquivo
def criarArquivo():
    with open("carros.csv","w",newline="") as arquivos:
        escritor = csv.writer(arquivos)
        escritor.writerow(["nome","ano","fipe","quantidade"])
        escritor.writerow(["sandero",2018,63000,3])
        escritor.writerow(["gol",2017,45000,5])
        escritor.writerow(["onix",2020,68000,4])
        escritor.writerow(["hb20",2019,62000,2])
    print("arquivo criado")
    
def lerArquivo():
    carros = []
    with open ("carros.csv","r",newline="") as arquivos:
        leitor =csv.DictReader(arquivos)
        for linha in leitor:
            carros.append(linha)
    return carros

def cadastro():
    print("digitem o nome do carro")
    nomec = input()
    print("digite o ano do carro")
    anocarro = input()
    print("digite atabela fipe do carro")
    fipecarro = input()
    print("digite quanto de estoque vai ter o carro")
    estoquecarro = input()
    carro = {
        "nome": nomec,
        "ano" : anocarro,
        "fipe": fipecarro,
        "quantidade": estoquecarro
    }
    carros.append(carro)
        
def salvarCarro():
    with open ("carros.csv","r",newline="") as arquivos:
        escritor=csv.writer(arquivos)
        escritor.writerow((carro["nome"],"ano","fipe","quantidade"))
        
    
     
def inicio():
   if not verificaArquivo():
       criarArquivo()
       carros =lerArquivo()
       print(carros)
    
def verificaArquivo():
    if(os.path.exists("carros.csv")):
        return True
    else:
        return False
     

   
inicio()
print("bem vindo a consecionaria")
print("digite 0 para sair")
print("digite 1 para vender seu carro para a concessionaria")
print("digite 2 para cadastrar um carro")
opcao = int(input())

















































































