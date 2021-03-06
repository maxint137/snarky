open Core_kernel

type ('var, 'value) t = {var: 'var; mutable value: 'value option}

let value (t : ('var, 'value) t) : ('value, 'field, 's) As_prover0.t =
 fun _ s -> (s, Option.value_exn t.value)

let var {var; _} = var
