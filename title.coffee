command: "flexbar.widget/get_kwm_info.sh"

refreshFrequency: 500

render: (output) ->
  """
  <link rel="stylesheet" href="/flexbar.widget/css/font-awesome.css" />
  <div class="foc">
    <span class="fa fa-desktop fa-fw"></span>
    <span class="value"></span>
  </div>
  <div class="title">
    <span class="fa fa-desktop fa-fw"></span>
    <span class="value"></span>
  </div>
  """

update: (output, domEl) ->
  kwmInfo = output.split("|")
  $('.foc .value', domEl).text(kwmInfo[0]);
  $('.title .value', domEl).text(kwmInfo[1]);

style: """
  display: flex;
  align-items: baseline;
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 1.2vh Osaka-Mono;
  overflow: hidden
  text-overflow: ellipsis
  left: 1vw;
  top: 6px;

  .value {
    margin-right: 10px;
  }
"""