#!/bin/bash

# Generate semanas 6-12 HTML files with proper structure

for week in 6 7 8 9 10 11 12; do
    if [ $week -eq 6 ]; then
        TITLE="Esperanza y Momentos"
        CONTENT="Esperanza, LOTUS, MGF, momentos, Chebyshev, entropy"
    elif [ $week -eq 7 ]; then
        TITLE="Covarianza, Correlación y Condicional"
        CONTENT="Covarianza, correlación, esperanza condicional, ley de varianza total"
    elif [ $week -eq 8 ]; then
        TITLE="Cadenas de Markov"
        CONTENT="Cadenas de Markov, distribución estacionaria, ergodicidad, MCMC básico"
    elif [ $week -eq 9 ]; then
        TITLE="Teoremas Límite"
        CONTENT="Tipos de convergencia, LLN fuerte/débil, CLT, método Delta"
    elif [ $week -eq 10 ]; then
        TITLE="Inferencia Estadística Frecuentista"
        CONTENT="MLE, Fisher, intervalos de confianza, pruebas de hipótesis"
    elif [ $week -eq 11 ]; then
        TITLE="Inferencia Bayesiana"
        CONTENT="Prior/posterior, conjugados, MCMC, PyMC"
    elif [ $week -eq 12 ]; then
        TITLE="Temas Avanzados y Aplicaciones"
        CONTENT="Martingalas, movimiento Browniano, teoría de la medida, Black-Scholes, SIR"
    fi

    # Next week navigation
    next_week=$((week + 1))
    if [ $next_week -gt 12 ]; then
        next_week_link="index.html"
        next_text="Volver al Inicio"
    else
        next_week_link="semana-$(printf "%02d" $next_week).html"
        next_text="Siguiente: Semana $next_week →"
    fi

    # Create file content
    cat > "semana-$(printf "%02d" $week).html" << EOF
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana $week: $TITLE</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.0/dist/katex.min.css">
    <script src="https://cdn.jsdelivr.net/npm/katex@0.16.0/dist/katex.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/katex@0.16.0/dist/contrib/auto-render.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.8.0/build/styles/atom-one-dark.min.css">
    <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.8.0/build/highlight.min.js"></script>
</head>
<body>
    <header>
        <nav class="container">
            <a href="../index.html" class="logo">📊 Probabilidad Maestría</a>
            <ul class="nav-links">
                <li><a href="../index.html">Inicio</a></li>
                <li><a href="../libros.html">Libros</a></li>
                <li><a href="../ejercicios.html">Ejercicios</a></li>
            </ul>
        </nav>
    </header>

    <main class="container">
        <aside class="sidebar">
            <div class="sidebar-title">📅 Semanas</div>
            <ul class="semanas-list">
                <li><a href="semana-01.html">Semana 1</a></li>
                <li><a href="semana-02.html">Semana 2</a></li>
                <li><a href="semana-03.html">Semana 3</a></li>
                <li><a href="semana-04.html">Semana 4</a></li>
                <li><a href="semana-05.html">Semana 5</a></li>
                <li><a href="semana-06.html">Semana 6</a></li>
                <li><a href="semana-07.html">Semana 7</a></li>
                <li><a href="semana-08.html">Semana 8</a></li>
                <li><a href="semana-09.html">Semana 9</a></li>
                <li><a href="semana-10.html">Semana 10</a></li>
                <li><a href="semana-11.html">Semana 11</a></li>
                <li><a href="semana-12.html">Semana 12</a></li>
            </ul>
        </aside>

        <div class="content">
            <h1>Semana $week: $TITLE</h1>

            <div class="objectives">
                <div class="objectives-title">✓ Objetivos de Aprendizaje</div>
                <ul>
                    <li>Dominar los conceptos fundamentales de la semana</li>
                    <li>Aplicar la teoría a problemas prácticos</li>
                    <li>Implementar algoritmos en Python</li>
                    <li>Resolver ejercicios de nivel maestría</li>
                    <li>Comprender conexiones con temas anteriores</li>
                </ul>
            </div>

            <h2>📖 Teoría Fundamental</h2>
            <p><strong>Temas de esta semana:</strong> $CONTENT</p>

            <div class="card">
                <div class="card-title">Contenido Detallado</div>
                <p>Esta semana cubre conceptos avanzados de probabilidad. Revisa los libros recomendados para desarrollo completo de la teoría.</p>
            </div>

            <h2>💻 Código Python</h2>
            <pre><code class="language-python">import numpy as np
import matplotlib.pyplot as plt
from scipy import stats

# Ejemplo de simulación para esta semana
# (Consulta los libros y recursos para implementación completa)

print("Semana $week: Código en desarrollo")
print("Consulta los referencias para implementación detallada")
</code></pre>

            <h2>✍️ Ejercicios</h2>
            <div class="exercises">
                <div class="exercises-title">Problemas de Práctica</div>
                <div class="exercise-item">
                    <div class="exercise-number">Ejercicio $week.1</div>
                    <p>Consulta los libros recomendados para problemas de práctica detallados.</p>
                </div>
            </div>

            <h2>📚 Referencias</h2>
            <div class="references">
                <div class="references-title">Lectura Recomendada</div>
                <ul>
                    <li><strong>Blitzstein & Hwang</strong> - Introduction to Probability</li>
                    <li><strong>Wasserman</strong> - All of Statistics</li>
                    <li><strong>Casella & Berger</strong> - Statistical Inference</li>
                </ul>
            </div>
        </div>
    </main>

    <footer>
        <p>🎓 Semana $week | $TITLE</p>
        <p><a href="$next_week_link">$next_text</a></p>
    </footer>

    <script src="../js/main.js"></script>
</body>
</html>
EOF

echo "✓ Created semana-$(printf '%02d' $week).html"
done

echo "✓ All weeks (6-12) generated successfully"
