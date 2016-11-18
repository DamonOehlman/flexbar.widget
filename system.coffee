command: "flexbar.widget/get_stats.sh"

refreshFrequency: 1000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  font: 1.5vh Osaka-Mono
  top: 4px
  right: 145px
  color: #FABD2F
  span
    color: #9C9486
"""
