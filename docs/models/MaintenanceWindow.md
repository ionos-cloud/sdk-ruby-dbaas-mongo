# MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** |  |  |
| **day_of_the_week** | [**DayOfTheWeek**](DayOfTheWeek.md) |  |  |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::MaintenanceWindow.new(
  time: 16:30:59,
  day_of_the_week: null
)
```

