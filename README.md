# confd

[![Build Status](http://d.monstrs.ru/api/badge/github.com/monstrs/confd-cookbook/status.svg?branch=master)](http://d.monstrs.ru/github.com/monstrs/confd-cookbook)

TODO: Enter the cookbook description here.

## Supported Platforms

### Tested And Validated On
- Ubuntu 14.04

## Usage

TODO: Include usage patterns of any providers or recipes.

### confd::default

Include `confd` in your run_list.

```json
{
  "confd": {
    "backend": "etcd",
    "nodes": ["http://localhost:4001"]
  },
  "run_list": [
    "recipe[confd::default]"
  ]
}
```

## Testing

TODO: Write how you plan to test this cookbook.
