# Sistemas quânticos abertos utilizando o controle de Lyapunov

O seguinte repositório elucida as etapas da iniciação científica para análise de estados quânticos e preparação dos mesmos por meio dos sitemas de controle, nesse caso, o de Lyapunov e o Model Predictive Control. O objetivo desse trabalho é verificar a controlabilidade de sistemas quãnticos abertos baseados na equação de lindblad como vista abaixo:

$$ \frac{\partial \rho}{\partial t} = \frac{-i}{\hbar}[H, \rho] + \sum_{i} \gamma_{i} ( L_i \rho L_i^{\dagger} - \frac{1}{2} \dot (L_iL_i^{\dagger} \dot \rho + \rho \dot L_iL_i^{\dagger} )  )$$
 
Essa equação é importante pois demonstra o acoplamento de um sistema quântico ao ambiente ao mesmo tempo que facilita a interpretação de estados quânticos por meio da manipulação do Hamiltoniano e do operador densidade. Para a evolução deste trabalho, separaremos nos seguintes tópicos: (i) A interpretação da matriz de densidade, (ii) A interpretação da equação acima para um sistema simples, $\sigma_z$, (iii) A verificação do hamiltoniano, (iv) Verificação do sistema de controle, (v) Testes com o MPC, (vi) Controle de Lyapunov...

## Interpretação da matriz de densidade

Para que possamos entender a complexidade de um sistema quântico e como o ambiente age no meio, é importante caracterizar o que é um ensemble. Na mecânica quântica inicial, realizanmos previsões acerca de um sistema, tal como o sistema formado por $\ket{\psi} = 0.60\ket{0} + 0.80\ket{1}$, no entanto, com a ação do ambiente, evidenciamos uma mistura de estados. De modo mais preciso, em um ensemble supõe-se que todos os membros que dele fazem parte sejam caracterizados por um mesmo ket de estado $\ket{\alpha}$ [Sakurai e Napolitano, 2013]. Portanto, até o momento, e nas outras pesquisas, retratamos o ensemble como sendo $100\\%{\ket{\psi}}$, mas não sabemos o que poderiamos fazer se ocorresse $60\\%$ de um estado e $40\\%$ do outro.

Para reforçar a importância do ensamble, analisaremos a situação dos átomos de de prata saindo diretamente de um forno aquecido anteriormente a passagem por um filtro do tipo SG. Dessa forma, sem o filtro, não saberiamos em que direção a partícula estará já que esta não tem um preferência, ou não deveria ter. Somente com a definição de $\ket{\psi} = c_0\ket{0} + c_1\ket{1}$ não é suficiente para entender a direção de uma partícula. Com isso em mente, utilizaremos do conceito de peso probabilístico, para verificarmos de modo estatístico, quais membros podem ser caracterizados em um determinado tipo dentro de um ensemble. Essa nova proposta possibilita uma combinação, de modo que possa ser possível ter uma mistura 50-50 de $\ket{S_x;+}$ e $\ket{S_x;-}$.

A mecânica quântica se baseia na medição de observáveis, então suponha que tenhamos feito uma medida de algum observável A em um ensemble misto, uma certa fração em um estado e o resto noutro. Como a mecânica quântica tem um problema nas medições de partículas, o estudo do valor esperado é importante, dessa forma, suponha que o valor esperado de um observável A queira ser medido após diversas medições terem sido realizadas. Podemos obter esse valor por meio da média sobre o ensemble do observável A, que definimos como: 

$$ [A] = \sum_i w_i \bra{ \alpha^{(i)} } A \ket{ \alpha^{(i)} }  $$

Sabendo que $A\ket{a} = a\ket{a}$, visto que a representa um autoestado do observável, e ainda que $A = A\ket{a}\bra{a}$. Concluí-se que:

$$ [A] = \sum_i \sum_{a} w_i| \bra{a}\ket{\alpha^{(i)} } |^2 a $$

Acima, percebe-se que os conceitos probabilísticos são referidos duas vezes, se apresenta no módulo, que simboliza a probabilidade quântica de um estado ser encontrado em um autoestado de um observável, e também se apresenta no peso. Quando generalizamos o procedimento acima com as bases $b^{'}$ e $b^{''}$ acabamos gerando o mesmo termo generalizado, do qual chamaremos de operador densidade.

$$\rho = \sum_i w_i \bra{ a^{(i)} }\ket{ a^{(i)} }$$

Dessa forma, o operador densidade representa o ensemble estudado em que a sua diagonal secundária representa a composição de estados, enquanto a diagonal principal representa as estatísticas de um estado.

## A interpretação da equação acima para um sistema simples, $\sigma_z$
