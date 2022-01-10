%{
t is the time, m_r is the mass at a specific time t, 
a is the acceleration, m_i is the initial mass with the fuel, b_rate is the burn rate of mass with time, 
v_e is the exhaust velocity, Isp is the specific impulse, x is the distance
covered. All variables and constants have an _# to indicate the stage
number they are for. 
%}

% Stage 1

    t = [6.5 : 1 : 174.5];
    m_i = 2.99*10^6;
    b_rate = 1.3*10^4;
    v_e = 2.456*10^3;
    m_r = m_i - (b_rate*(t - 6.5));
    a = (v_e./m_r)*b_rate-9.8;

    figure(1)
    plot(t,a,'g')
    hold on

    Isp=263;
    u=9.8*(Isp*log(m_i./m_r)-(t-6.5));

    figure(2)
    plot(t,u,'g')
    hold on
    
    figure(3)
    x= u.*t
    plot(t,x,'g');
    hold on

% Stage 2

    t = [174.5:534.5]    
    m_i_2 = 0.4962*10^6; 
    b_rate_2= 0.1266*10^4;
    v_e = 4.22*10^3;
    m_r_2 = m_i_2 - (b_rate_2*(t-174.5));
    a_1=(v_e./m_r_2)*b_rate_2-9.8

    figure(1)
 
    plot(t,a_1,'r')
    hold on

    Isp_2 = 421;
    u_2 = u(1,162) + 9.8*(Isp_2*log(m_i_2./m_r_2)-(t-174.5));
    

    figure(2)
   
    plot(t,u_2,'r')
    hold on

    figure(3)
    
    x_1 = u_2.*t
    plot(t,x_1,'r');
    hold on
    
% Stage 3

    t = [534.5 : 1034.5]
    m_i_3 = 0.123*10^6;
    b_rate_3 = 0.0219*10^4;
    v_e = 4.63*10^3;
    m_r_3 = m_i_3 - (b_rate_3*(t - 534.5));
    a_2=(v_e./m_r_3)*b_rate_3 - 9.8

    figure(1)
    xlabel('time since launch (s)')
    ylabel('acceleration (m/s^2)')
    
    plot(t,a_2,'b')

    Isp_2 = 421;
    u_3 = u_2(1,361) + 9.8*(Isp_2*log(m_i_3./m_r_3)-(t-534.5)) ;
    
    legend({'stage 1', 'stage 2', 'stage 3'},'location','southeast')
    

    figure(2)
    xlabel('time since launch (s)')
    ylabel('speed (m/s)')
    
    plot(t,u_3,'b')
    legend({'stage 1', 'stage 2', 'stage 3'},'location','southeast')

    figure(3)
    xlabel('time since launch (s)')
    ylabel('distance (m)')
   
    x_2 = u_3.*t;
    plot(t,x_2,'b')
    legend({'stage 1', 'stage 2', 'stage 3'},'location','southeast')


