import Lake
open Lake DSL

package "jsp-000377-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos466

@[default_target]
lean_lib «JSP_000377» where
  roots := #[`JSP_000377, `Erdos466]
