# Sistemas quânticos abertos utilizando o controle de Lyapunov

O seguinte repositório elucida as etapas da iniciação científica para análise de estados quânticos e preparação dos mesmos por meio dos sitemas de controle, nesse caso, o de Lyapunov e o Model Predictive Control. O objetivo desse trabalho é verificar a controlabilidade de sistemas quãnticos abertos baseados na equação de lindblad como vista abaixo:

$$ \frac{\partial \Psi}{\partial t} = \frac{-i}{\hbar}[H, \rho] + \sum_{i} \gamma_{i} ( L_i \rho L_i^{\dagger} - \frac{1}{2} \{ L_iL_i^{\dagger}, \rho \} )$$