# Sistemas quânticos abertos utilizando o controle de Lyapunov

O seguinte repositório elucida as etapas da iniciação científica para análise de estados quânticos e preparação dos mesmos por meio dos sitemas de controle, nesse caso, o de Lyapunov e o Model Predictive Control. O objetivo desse trabalho é verificar a controlabilidade de sistemas quãnticos abertos baseados na equação de lindblad como vista abaixo:

$$ \frac{\partial \rho}{\partial t} = \frac{-i}{\hbar}[H, \rho] + \sum_{i} \gamma_{i} ( L_i \rho L_i^{\dagger} - \frac{1}{2} \dot (L_iL_i^{\dagger} \dot \rho + \rho \dot L_iL_i^{\dagger} )  )$$
 
Essa equação é importante pois demonstra o acoplamento de um sistema quântico ao ambiente ao mesmo tempo que facilita a interpretação de estados quânticos por meio da manipulação do Hamiltoniano e do operador densidade. Para a evolução deste trabalho, separaremos nos seguintes tópicos: (i) A interpretação da matriz de densidade, (ii) A interpretação da equação acima para um sistema simples $\sigma_z$, (iii) A verificação do hamiltoniano, (iv) Verificação do sistema de controle, (v) Testes com o MPC, (vi) Controle de Lyapunov...

## Interpretação da matriz de densidade

