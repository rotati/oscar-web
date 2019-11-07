import React, { useState } from 'react'
import AdministrativeInfo from './administrativeInfo'
import RefereeInfo from './refereeInfo'
import ReferralInfo from './referralInfo'
import './styles.scss'

const Forms = props => {
  const {
    data: {
      client, users, birthProvinces, referralSource, referralSourceCategory, selectedCountry, internationalReferredClient
    }
  } = props
  const [step, setStep] = useState(1)
  const gettingStartData = { client, users, birthProvinces, referralSourceCategory, referralSource, selectedCountry, internationalReferredClient }

  const tabs = [
    {text: 'Referee Information', step: 1},
    {text: 'Client / Referral Information', step: 2},
    {text: 'Client / Referral - More Information', step: 3},
    {text: 'Client / Referral - Vulnerability Information and Referral Note', step: 4}
  ]

  const activeClass = value => step === value ? 'active' : ''

  const renderTab = (data, index) => {
    return (
      <span
        key={index}
        onClick={() => setStep(data.step)}
        className={`tabButton ${activeClass(data.step)}`}
      >
        {data.text}
      </span>
    )
  }

  return (
    <div className='container'>
      <div className='tabHead'>
        {tabs.map((tab, index) => renderTab(tab, index))}
      </div>

      <div className='contentWrapper'>
        <div className='leftComponent'>
          <AdministrativeInfo data={gettingStartData} />
        </div>

        <div className='rightComponent'>
          <div style={{display: step === 1 ? 'block' : 'none'}}>
            <RefereeInfo step={step} data={gettingStartData} />
          </div>

          <div style={{display: step === 2 ? 'block' : 'none'}}>
            <ReferralInfo step={step} data={gettingStartData} />
          </div>
        </div>
      </div>

      <div className='actionfooter'>
        <div className='leftWrapper'>
          <span className='btn btn-default'>Cancel</span>
        </div>

        <div className='rightWrapper'>
          <span className='previousButton'>Previous</span>
          <span className='nextButton'>Next</span>
        </div>
      </div>
    </div>
  )
}

export default Forms
