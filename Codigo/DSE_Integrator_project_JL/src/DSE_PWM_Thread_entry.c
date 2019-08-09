/* ======== Includes  ========*/

#include "DSE_PWM_Thread.h"
#include "DSE_ADC_Thread.h"

/* DSE_PWM_Thread entry function */
/* ======== Global Variables  ========*/
uint16_t dse_dutyCiclePWM[1]      ={0U};
uint16_t dse_status;
uint32_t dse_setPoint             = 0U;
uint16_t sde_counter              = 0U;
uint16_t rpm                      = 0U;
uint16_t dse_dutyCycle = 0;

double dse_error  = 0;
double dse_error_anterior =0;
double dse_errorTotal = 0;
double kp = 1;
double ki = 0;
double kd = 0;
double rt = 0;
double yt = 0;
double iT = 0;
double dse_dt = 0;
uint16_t dse_ut = 0;
double iT0 = 0;
uint16_t max = 1000;
uint16_t min = 0;



void DSE_PWM_Thread_entry(void)
{
        //Inicializamos el Timer 1 para la lectura del PWM
        dse_timerPWM.p_api->open(dse_timerPWM.p_ctrl, dse_timerPWM.p_cfg);
        dse_timerPWM.p_api->dutyCycleSet(dse_timerPWM.p_ctrl, 0, TIMER_PWM_UNIT_PERCENT_X_1000, 1);
        dse_timerPWM.p_api->start(dse_timerPWM.p_ctrl);

        //Inicializamos el Timer 2 para la lectura del Control
        dsw_timerControl.p_api->open(dsw_timerControl.p_ctrl, dsw_timerControl.p_cfg);
        dsw_timerControl.p_api->start(dsw_timerControl.p_ctrl);

        //Inicializamos la interrupción
        dse_sensorHall_Interrup.p_api->open(dse_sensorHall_Interrup.p_ctrl, dse_sensorHall_Interrup.p_cfg);

    while (1)
    {
        tx_thread_sleep (1);
        dse_status = (uint16_t)_txe_queue_receive(&DSE_QueueADC, dse_dutyCiclePWM, TX_WAIT_FOREVER);
        dse_setPoint = (uint32_t) dse_dutyCiclePWM[0] * 12;

        if(dse_setPoint >= 3000)
        {
            dse_setPoint = 3000;
        }



    }


}


void dse_sensorHall_CallBack (external_irq_callback_args_t *p_args)
{
    (void) p_args;
    sde_counter++;
}

void dsw_timerControl_CallBack(timer_callback_args_t *p_args)
{
    (void) p_args;
    yt = sde_counter * 2400;
    sde_counter = 0;
    rpm = (uint16_t) yt/8;
    rt = dse_setPoint * 8;
    dse_errorTotal = rt - yt;
    iT = ki * (dse_errorTotal + iT0);
    dse_dt = kd * (dse_errorTotal - dse_error_anterior);

    dse_ut = (uint16_t)(iT + kp * dse_errorTotal + dse_dt);

    if ( dse_ut > max)
    {
        dse_ut = max;
    }
    else if ( dse_ut < min )
    {
        dse_ut = min;
    }
    else
    {

    }

    dse_dutyCycle = (uint16_t)(max - dse_ut);
    iT0 = iT;
    dse_error_anterior = dse_errorTotal;



    dse_timerPWM.p_api->dutyCycleSet(dse_timerPWM.p_ctrl, (uint32_t)(dse_dutyCycle*100) , TIMER_PWM_UNIT_PERCENT_X_1000, 1);

}



