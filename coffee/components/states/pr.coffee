React     = require('react')
Deadline  = require('components/blocks/deadline')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
ShareBar  = require('components/blocks/shareBar')
Sticky     = require('react-stickynode')
Scroll     = require('react-scroll')
moment    = require('moment')
Button    = require('components/blocks/button')

module.exports = React.createClass
  displayName: 'PR State Info'

  render: ->
    <section className='flex'>
      <div className='state-info'>
        <div className='breadcrumbs'>
          Bernie 2016 > Vote for Bernie > {@props.state.name}
        </div>

        <div className='state'>
          <div className='primary-info'>
            <div className='mobile-share'>
              <Share {...@props}/>
            </div>

            <h2>
              {@props.state.name}
            </h2>
            <h3 className='caps'><strong>domingo, 5 de junio</strong> | Primaria Abierta</h3>
          </div>

          {unless not @props.state.parties
            <div className='can-vote'>
              <h3 className='caps'>Can Vote:</h3>

              <div className='party-icons'>
                {for party in @props.state.parties
                  <div className="icon #{party}" data-tip="Democrats"></div>
                }
                <ReactTooltip place="top" effect="solid"/>
              </div>
            </div>
          }
        </div>

        <div className='register'>
          <div>
            <div className='reg-deadline'>
              <h3 className='caps'>
                <span>Fecha Tope de Registrar: <br /><strong>sábado, 16 de abril</strong></span>
              </h3>
            </div>

            <div className='reg-buttons'>
              <Button title='Estatus del Elector' link='http://ceepur.org/es-pr/Paginas/Estatus-del-Elector.aspx' classes='btn-secondary' />
            </div>
          </div>
        </div>
      </div>
      <ShareBar {...@props} />

      <div className='info-nav'>
        <Sticky top={0} bottomBoundary='section.flex'>
          <ul>
            {if @props.state.pollWgt
              <li>
                <Scroll.Link activeClass='active' to='polling-location' spy=true smooth=true offset=0>
                  <h3 className='caps'>Find Polling Location</h3>
                </Scroll.Link>
              </li>
            }
            <li>
              <Scroll.Link activeClass='active' to='key-info' spy=true smooth=true offset=0>
                <h3 className='caps'>Información Importante</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='more-info' spy=true smooth=true offset=0>
                <h3 className='caps'>Mas Información</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='campaign-offices' spy=true smooth=true offset=0>
                <h3 className='caps'>Oficinas de Campaña</h3>
              </Scroll.Link>
            </li>
          </ul>
        </Sticky>
      </div>

      <div className='left'>
        <PollPlace state={@props.state} />

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>
                Información Importante
              </h3>
            </div>

            <div className='section-body'>
              <p>
                Puerto Rico tiene primarias abiertas {entity('mdash')} todos los votantes registrados pueden emitir su voto por Bernie siempre y cuando no hayan participado en las primarias Republicanas.
              </p>

              <p>
                Para participar en las primarias Demócratas en Puerto Rico deben haberse registrado para votar antes del sábado 16 de abril.
              </p>
            </div>
          </div>

          <div id='more-info' className='section'>
            <div className='section-header'>
              <h3 className='caps'>Mas Información</h3>
            </div>

            <div className='section-body'>
              <p>
                Puerto Rico permite la votación ausente y adelantada solo en circunstancias específicas. Para más información, visite la Comisión Estatal de Elecciones.
              </p>
              <p>
                <a href={@props.state.office.url} target='_blank'>Comisión Estatal de Elecciones</a>
              </p>
            </div>
          </div>

          <Offices {...@props} />
        </div>
      </div>
    </section>
