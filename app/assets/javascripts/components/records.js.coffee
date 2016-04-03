# Records component

@Records = React.createClass
	getInitialState: -> # Initialize the component's state
		records: @props.data
	getDefaultProps: -> # Initialize the component's properties (empty array)
		records: []
	render: -> # Every component needs render method
		React.DOM.div
			className: 'records'
			React.DOM.h2
				className: 'title'
				'Records'
			React.DOM.table
				className: 'table table-bordered'
				React.DOM.thead null,
					React.DOM.tr null,
						React.DOM.th null, 'Date'
						React.DOM.th null, 'Title'
						React.DOM.th null, 'Amount'
					React.DOM.tbody null,
						for record in @state.records
							React.createElement Record, key: record.id, record: record
							# ^^ key: record.id helps React refresh dynamic records ^^

## The render method in JSX syntax...
# render: ->
# `<div className="records">
# 	<h2 className="title"> Records </h2>
# </div>`
# ...
