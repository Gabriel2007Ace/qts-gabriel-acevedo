import {
    assertGreater,
    assertFalse,
    fail,
    equal,
    assertLess
} from "https://deno.land/std/testing/asserts.ts"
let aluno = 'Cróvis José'
let professores = ["João", "Lais", "Davi", "Alan"]


Deno.test("Teste de assertions (API)", () => {
    
    assertGreater(4,2)
    
    //assertFalse(1!==1)

    //fail(1!==1)
 
    //equal(({ foo: "bar" }, { foo: "bar" }))

    assertLess(5, 2)

})
