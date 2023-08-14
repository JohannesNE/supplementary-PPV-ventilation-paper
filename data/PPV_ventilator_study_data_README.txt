Serial measurements of pulse pressure variation (PPV) with different 
ventilator settings. PPV is indicative of a patients response to IV fluids.

Variables in `vent_setting_study-vent_protocol.csv`:
 - id: Unique subject id
 - vent_setting_order: The order ventilator settings were applied in for the specific subjects
 - vent_rel_vt: Ventilator setting, relative tidal volume (ml/kg)
 - vent_RR: Ventilator setting, respiratory rate (1/min)
 - PPV: Pulse pressure variation (%)
   - PPV_gam: PPV calculated from a generalized additive model of PP (see https://doi.org/10.1007/s10877-022-00873-7)
   - PPV_classic: PPV calculated as described by De Backer 2009 (https://doi.org/10.1097/ALN.0b013e31819db2a1)
   - PPV_intellivue: PPV exported by the Philips IntelliVue MX550 (not available for all subjects)
 - mean_beat_len: Mean of heat beat length (QRS to QRS) during each ventilator setting
 - CVP: Mean central venous pressure during last 15 sec of each ventilator setting
 - MAP: Mean arterial pressure during last 15 sec of each ventilator setting
 - SAP: Mean systolic arterial pressure during last 15 sec of each ventilator setting
 - DAP: Mean diastolic arterial pressure during last 15 sec of each ventilator setting
 - heart_rate: Mean heart rate during a ventilator setting (60/mean_beat_len)
 - hr_rr_ratio: heart_rate/vent_RR

Variables in `vent_setting_study-fluid_response.csv`:
 - id: Unique subject id,
 - SV_pre_fluid_avg: median stroke volume (FloTrac) in the two minutes prior to fluid 
 - SV_post_fluid_avg: median stroke volume in the two minutes after fluid
 - SV_rel_fluid_response: relative response to fluid ((post - pre) / pre)
 - SV_abs_fluid_response: absolute response to fluid (post - pre)
 - CI_pre_fluid_avg: median cardiac index (CI/BSA) (FloTrac)
 - CI_post_fluid_avg
 - CI_rel_fluid_response
 - CI_abs_fluid_response
 - SVI_pre_fluid_avg: median stroke volume index (SV/BSA) (FloTrac)
 - SVI_post_fluid_avg
 - SVI_rel_fluid_response
 - SVI_abs_fluid_response
 - MAP_pre_fluid_avg: median mean arterial pressure (Intellivue)
 - MAP_post_fluid_avg
 - MAP_rel_fluid_response
 - MAP_abs_fluid_response
 - SAP_pre_fluid_avg: median systolic arterial pressure (Intellivue)
 - SAP_post_fluid_avg
 - SAP_rel_fluid_response
 - SAP_abs_fluid_response
 - DAP_pre_fluid_avg: median diastolic arterial pressure (Intellivue)
 - DAP_post_fluid_avg
 - DAP_rel_fluid_response
 - DAP_abs_fluid_response
 - CVP_pre_fluid_avg: median central venous pressure (Intellivue)
 - CVP_post_fluid_avg
 - CVP_rel_fluid_response
 - CVP_abs_fluid_response
 - PP_pre_fluid_avg: median pulse pressure
 - PP_post_fluid_avg
 - PP_rel_fluid_response
 - PP_abs_fluid_response
 - SVV_pre_fluid_avg: median stroke volume variation (FloTrac)
 - SVV_post_fluid_avg
 - SVV_rel_fluid_response
 - SVV_abs_fluid_response
 - fluid_responder: SV_rel_fluid_reponse > 0.1
