# Simple string formatter

@amountFormat = (amount) ->
	'$ ' + Number(amount).toLocaleString()