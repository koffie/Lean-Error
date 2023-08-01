import Mathlib

-- this is not a bug but a feature, see https://xenaproject.wordpress.com/2020/07/05/division-by-zero-in-type-theory-a-faq/
#check ((0 - 1) : ℕ)

example : 0 - 1 = 0 := by
  simp

theorem truncated_substraction (n : ℕ) (m : ℕ) (h: m ≥ n): n - m = 0 := by
  simp
  exact h

theorem truncated_substraction2 (n : ℕ) (m : ℕ) (b : ℕ) (h: n + b = m): n - m = 0 := by
  rw [← h]
  simp

theorem normal_subtraction (n : ℕ) (m : ℕ) (b : ℕ) (h: n = m + b): n - m = b := by
  rw [h]
  simp
