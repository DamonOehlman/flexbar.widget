command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="/flexbar.widget/css/font-awesome.css" />
  <div class="foc">
    <span class="fa fa-desktop fa-fw"></span>
    <span class="value"></span>
  </div>
  """

update: (output, el) ->
    $(".foc .value", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 1.5vh Osaka-Mono;
  overflow: hidden
  text-overflow: ellipsis
  left: 1vw;
  top: 6px;
"""