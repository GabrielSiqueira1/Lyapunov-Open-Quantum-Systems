<div align='justify'>

# Preparação de portas quânticas com o Controle de Lyapunov

# Procedimentos iniciais

Para o seguinte trabalho utilizou-se da plataforma jupyter com o objetivo de exibir as atividades em python. Para tal, usou-se a o miniconda na última versão disponibilizada pelo pyenv, na data de 14/05/2024. Para que o código do repositório execute normalmente é necessário a instalação das bibliotecas abaixo.

```
pip install numpy scipy matplotlib jupyter sympy
```

Diferentemente do repositório anterior, este se propõe a utilizar um sistema de controle não aplicado a indústria, mas muito utilizado em pós-graduações de Engenharias Elétrica e Computação.

# Sumário

1. [Atividade 1 - Método de controle de Lyapunov](#atividade-1---método-de-controle-de-lyapunov)
2. [Atividade 2 - Portas quânticas](#atividade-2---portas-quânticas)

## Atividade 1 - Método de controle de Lyapunov

O método de controle de Lyapunov se baseia na estabilidade de um sistema de controle, afinal, um sistema instável se torna inseguro. Para quantificar essa estabilidade, faz-se o uso da função de Lyapunov, $V(x,t)$. Essa função deve ser semidefinida positiva, $V(x,t) > 0$ e a sua derivada, semidefinida negativa, $ \dot V(x,t) < 0$, ou seja, ao longo do tempo, a função de Lyapunov estará limitada de modo a não extrapolar. 
A função de Lyapunov pode ser aplicada a sistemas quânticos, como é o caso desse repositório. Utilizando como base o [artigo da Dra. Shuang Cong](https://ieeexplore.ieee.org/document/8332145), $V(t) = ||L(t)||^2 = tr(L^\dagger(t)L(t))$, onde $L(t) = W(t) - I - \frac{1}{2}(W(t) - I)^2$ e este $W(t) = U_f^\dagger U(t)$.
$U(t)$ está diretamente relacionado com a equação de Lindblad. Note, observando a equação de Lindblad, $\frac{\partial \rho_t}{\partial t} = -i [H, \rho_t] + L(\rho_t)$, a matriz de densidade, $\rho_t$, e a representação da interação com o ambiente externo, $L(\rho_t)$ podem ser representados por meio da esfera de Bloch, que, utilizando álgebra de Lie, podem representar a equação de Lindblad de outra forma, $\dot U(t) = (A(t)+B)U(t)$. Ou seja, o fator obtido do artigo está totalmente relacionado com o sistema quântico e utilizando-o, pode-se alcançar o projeto de portas quânticas.

## Atividade 2 - Portas quânticas

<div>
