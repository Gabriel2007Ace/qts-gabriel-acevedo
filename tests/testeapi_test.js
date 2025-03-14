import {
    assertGreater,
    assertLess,
    assertMatch,
    assertExists,
    assertAlmostEquals,
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
Deno.test("Teste existir", () => {
    
    assertExists("something");
});

Deno.test("Quase igual", () => {
    
    assertAlmostEquals(0.01, 0.02);
});