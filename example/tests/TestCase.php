<?php

// Rodar o teste ' .\vendor\bin\phpunit .\CalculatorTest.php '
//.\vendor\bin\phpunit .\CalculatorTest.php

namespace Tests;

use Illuminate\Foundation\Testing\TestCase as BaseTestCase;

// Função para calcular a média
function calcularMedia($notas) {
    $total = array_sum($notas);
    return $total / count($notas);
}

// Função para determinar o resultado com base na média
function verificarSituacao($media) {
    if ($media >= 7) {
        return "Aprovado";
    } elseif ($media >= 5) {
        return "Recuperação";
    } else {
        return "Reprovado";
    }
}
?>


    <?php
        // Definindo as notas diretamente no código
    $notas = [8, 7, 9, 10]; // As notas que já estão pré-definidas

    // Calculando a média e a situação com as notas pré-definidas
    $media = calcularMedia($notas);
    $situacao = verificarSituacao($media);

    echo "<h3>Notas: " . implode(", ", $notas) . "</h3>";
    echo "<h3>Média: " . number_format($media, 2) . "</h3>";
    echo "<h3>Situação: $situacao</h3>";


    class CalculadoraMediaTest extends TestCase
    {

        

        public function testMediaMaiorQueCinco()
        {
            $notas = [6, 7, 5, 6];
            $media = calcularMedia($notas);
            $this->assertGreaterThan(5, $media); // A média deve ser maior que 5
        }
        
        // Teste com assertIsFloat: garantir que a média é um número decimal
        public function testMediaEhFloat()
        {
            $notas = [6.5, 7.5, 8.0, 9.0];
            $media = calcularMedia($notas);
            $this->assertIsFloat($media); // A média deve ser do tipo float
        }


        public function testMediaEstaNaListaDeMediasValidas()
        {
            $notas = [6, 6, 6, 6]; // média = 6.0
            $media = calcularMedia($notas);
        
            $mediasValidas = [5.0, 5.5, 6.0, 6.5, 7.0];
            $this->assertContains($media, $mediasValidas);
        }      

    }


    ?>


