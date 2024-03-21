let test_f () =
  let result = Dummy.f () in
  Alcotest.(check int) "Result should be 42" 42 result  

let () =
  let open Alcotest in
  run "Example tests" [
    "test f", [
      test_case "return 42" `Quick test_f;
    ]
  ]                                                                                                                  
