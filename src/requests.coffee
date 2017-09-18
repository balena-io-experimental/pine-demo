client = require 'pinejs-client'
util = require 'util'
pine = new client('http://localhost:1337/demo/')

fmt = (a) -> console.log(util.inspect(a, false, null))
###############################################################
# First_Device = pine.post(
# 	resource: 'device'
# 	body:
# 		name: "my_device"
# 		resinOS_version: 1
# 		type: "raspberry"
# )
# .then (res) ->
# 	fmt(res)
#
#
# List_Devices = pine.get(
# 	resource: 'device'
# )
# .then (res) ->
# 	fmt(res)
#
#
# Fail_Creating_Devices = pine.post(
# 	resource: 'device'
# 	body:
# 		name: "my_other_device"
# 		resinOS_version: 1
# )
# .then (res) ->
# 	fmt(res)
#
# ################################################################
#
# First_Application = pine.post(
# 	resource: 'application'
# 	body:
# 		name: "my_application"
# 		device_type: "raspberry"
# )
# .then (res) ->
# 	fmt(res)
#
#
# Assign_Device_To_Application = pine.put(
# 	resource: 'device'
# 	body:
# 		name: "my_device"
# 		resinOS_version: 1
# 		type: "raspberry"
# 		belongs_to__application: 1
# )
# .then (res) ->
# 	fmt(res)
#
# ###############################################################
#
# First_Rule_Violation = pine.post(
# 	resource: 'device'
# 	body:
# 		name: "my_super_device"
# 		type: "amber"
# 		resinOS_version: 9001
# )
# .then (res) ->
# 	fmt(res)
#
# First_Device = pine.post(
# 	resource: 'device'
# 	body:
# 		name: "my_super_device"
# 		type: "amber"
# 		resinOS_version: 2
# )
# .then (res) ->
# 	fmt(res)
#
# Second_Rule_Violation = pine.put(
# 	resource: 'device'
# 	body:
# 		name: "my_super_device"
# 		type: "amber"
# 		resinOS_version: 2
# 		belongs_to__application: 1
# )
# .then (res) ->
# 	fmt(res)
#
# ##############################################################
#
# List_Devices = pine.get(
# 	resource: 'device'
# )
# .then (res) ->
# 	fmt(res)
#
# Expand_applications = pine.get(
# 	resource: 'device'
# 	options:
# 		expand: 'belongs_to__application'
# )
# .then (res) ->
# 	fmt(res)
#
# Filter_devices = pine.get(
# 	resource: 'device'
# 	options:
# 		filter:
# 			resinOS_version:
# 				$gt: 1
# )
# .then (res) ->
# 	fmt(res)
#
# Filter_And_Select = pine.get(
# 	resource: 'device'
# 	options:
# 		filter:
# 			resinOS_version: $gt: 1
# 		select: 'name'
# )
# .then (res) ->
# 	fmt(res)
