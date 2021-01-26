def clock_angle(time)
    # code your solution here
    hours = time.split(":")[0].to_f
    minutes = time.split(":")[1].to_f

    # 360/60 = 6 in every minutes
    # 30/60 = 0.5  hour hand move by every minutes
    # 0
    h_pos = hours * 30 + minutes * 0.5
    m_pos = minutes * 6

    if m_pos < h_pos && h_pos != 360
        h_pos - m_pos
    elsif m_pos < h_pos && h_pos ==360
        0
    elsif m_pos > h_pos && h_pos >= 180
        360 - (m_pos - h_pos)
    elsif m_pos > h_pos && h_pos <180
        360 - m_pos + h_pos
    end

    
end
