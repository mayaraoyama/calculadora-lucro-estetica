#!/bin/bash
continuar="sim"
while [ "$continuar" = "sim" ]
do
echo "Digite o nome do procedimento:"
read procedimento
echo "quantidade realizada"
read quantidade_sessao
echo "valor da sessao"
read valor_sessao
echo "valor do produto"
read valor_produto
bruto=$(echo "$valor_sessao - $valor_produto"| bc)
total_bruto=$(echo "$bruto * $quantidade_sessao" | bc)
desconto_avista=$(echo "$valor_sessao - ($valor_sessao *0.1)" | bc)
lucro=$(echo "$desconto_avista - $valor_produto" | bc)
if [ $(echo "$lucro > 300" | bc) -eq 1 ]
then
	echo "lucro satisfatorio"
else
	echo "revisar precificação"
fi
echo "deseja calcular outro procedimento? (sim/nao)"
read continuar
done

