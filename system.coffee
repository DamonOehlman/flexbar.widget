command: "flexbar.widget/get_stats.sh"
systemStats: (output) ->
  @output.split('|')

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" type="text/css" href="/flexbar.widget/css/font-awesome.css">
  <div class="flexbar__title">title</div>
  <div class="flexbar__system">
    <div class="battery">
      <span class="fa fa-battery fa-fw"></span>
      <span class="value"></span>
    </div>
    <div class="date"></div>
    <div class="time"></div>
  </div>
  """

update: (output, domEl) ->
  systemStats = output.split("|")
  $(".battery .value", domEl).text(systemStats[0])
  $('.date', domEl).text(systemStats[3])
  $(".time", domEl).text(systemStats[4])

style: """
  font: 1.5vh Osaka-Mono;
  color: #9C9486;
  width: 98vw;
  padding: 5px 1vh;
  display: flex;
  justify-content: space-between;
  -webkit-font-smoothing: antialiased;
  color: #FABD2F;

  .flexbar__title {

  }

  .flexbar__system {
    display: flex;
  }

  .flexbar__system div {
    margin-left: 20px;
  }
"""
