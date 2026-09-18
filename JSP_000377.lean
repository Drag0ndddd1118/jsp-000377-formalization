import Erdos466

theorem jsp_000377_solved :
    ∃ δ : ℝ, 0 < δ ∧ Filter.Tendsto (fun X : ℝ ↦ Erdos466.N X δ) Filter.atTop Filter.atTop :=
  Erdos466.erdos_466

#print axioms jsp_000377_solved
-- 'jsp_000377_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
