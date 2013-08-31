module.exports =

  # checks if actual object contains all expected properties and that the number values are similar
  toApprox: (expected, maxEps) ->
    for key, numb of expected
      expect(@actual[key]).toBeDefined()
      if (Math.abs @actual[key] - numb) > maxEps
        return false
    true
