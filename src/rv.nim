import distributions

type RV[T] = ref object of RootObj
  ## Random variable class
  values: seq[T]





