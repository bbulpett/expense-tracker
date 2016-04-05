@RecordForm = React.createClass
	getINitialState: ->
		title: ''
		date: ''
		amount: ''
	render: ->
		React.DOM.form 
			className: 'form-inline'
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Date'
					name: 'date'
					value: @state.date
					onChange: @handleChange
				React.DOM.button
					type: 'submit'
					className: 'btn btn-primary'
					disabled: !@valid()
					'Create record'

	handleChange: (e) ->
		name = e.target.name
		@setState "#{name}": e.target.value