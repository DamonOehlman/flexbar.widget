command: "flexbar.widget/get_stats.sh"
systemStats: (output) ->
  @output.split('|')

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" type="text/css" href="/flexbar.widget/css/font-awesome.css">
  <div class="flexbar__title"></div>
  <div class="flexbar__system">
    <div class="cpu">
      <span class="fa fa-tachometer fa-fw"></span>
      <span class="value"></span>
    </div>
    <div class="memory">
      <span class="fa fa-bar-chart fa-fw"></span>
      <span class="value"></span>
    </div>
    <div class="battery">
      <span class="fa fa-battery fa-fw"></span>
      <span class="value"></span>
    </div>
    <div class="date">
      <span class="fa fa-calendar fa-fw"></span>
      <span class="value"></span>
    </div>
    <div class="time">
      <span class="fa fa-clock-o fa-fw"></span>
      <span class="value"></span>
    </div>
  </div>
  """

update: (output, domEl) ->
  systemStats = output.split("|")
  $('.cpu .value', domEl).text(systemStats[0]);
  $('.memory .value', domEl).text(systemStats[1] + '%');
  $('.battery .value', domEl).text(systemStats[2])
  $('.date .value', domEl).text(systemStats[3])
  $(".time .value", domEl).text(systemStats[4])

style: """
  font: 1.5vh Osaka-Mono;
  color: #9C9486;
  width: 98vw;
  padding: 6px 1vw;
  display: flex;
  background: #171717;
  justify-content: space-between;
  -webkit-font-smoothing: antialiased;
  color: #FABD2F;
  z-index: -1;

  .flexbar__title {

  }

  .flexbar__system {
    display: flex;
  }

  .flexbar__system div {
    margin-left: 8px;
  }
"""
