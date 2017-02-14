# weibo_message Step
weibo message sender, should send message to users who bind the weibo user to flow.ci

### INPUTS

* `FLOW_WEIBO_MESSAGE_USER_IDS` - 微博USER IDS.
* `FLOW_WEIBO_MESSAGE_DESCRIPTION` - 微博 消息.

## EXAMPLE 

```yml
steps:
  - name: weibo_message
    enable: true
    failure: true
    plugin:
      name: weibo_message
      inputs:
        - FLOW_WEIBO_MESSAGE_USER_IDS=$FLOW_WEIBO_MESSAGE_USER_IDS
        - FLOW_WEIBO_MESSAGE_DESCRIPTION=$FLOW_WEIBO_MESSAGE_DESCRIPTION
```
