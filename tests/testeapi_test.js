import {
    assertEquals,
    assertStringIncludes,
    assertArrayIncludes,
} from "https://deno.land/std/testing/asserts.ts"
let aluno = 'Cróvis José'
let professores = ["João", "Lais", "Davi", "Alan"]


Deno.test("Teste de assertions (API)", () => {
    assertsEquals(aluno, "Crósvis José");
    assertStringIncludes(aluno, "José");
})

Deno.test("Testando array do professor (API)", ()=>{
    assertArrayIncludes(professores,
        ["Davi", "Lais", "Alan"],
        "Opa Algo deu errado");
})