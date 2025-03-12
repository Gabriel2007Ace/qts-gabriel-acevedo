import {
    assertGreater,
    assertLess,
    assertMatch,
} from "https://deno.land/std/testing/asserts.ts"

Deno.test("Teste maior", () => {
    
    assertGreater(4,2)
    

});

Deno.test("Teste menor", () => {
    
    assertLess(1, 2)

});

Deno.test("Teste regex", () => {
    
    assertMatch("Raptor", /Raptor/)

});