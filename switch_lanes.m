function [plaza,v] = switch_lanes(plaza,v)
%�������򣬵�����ǰ��λ�ñ���ĳ���ռ��ʱ���ó����ǻ���
%���ֳ�����ǰ��������״̬�Ѿ������Ϊ-2��������prob���л���
prob = 0.8;
[L,W] = size(plaza);
for i = (L-1):-1:1
        for j = 2:(W-1)
            if plaza(i,j) == -2
                if rand < prob %�������㣬����
                        if rand>0.5
                        if plaza(i, j+1) == 0 
                            plaza(i,j+1) = 1;
                            plaza(i,j) = 0;
                            v(i,j+1) = v(i,j);
                            v(i,j) = 0;
                        elseif plaza(i, j-1) == 0
                            plaza(i, j-1) = 1;
                            plaza(i,j) = 0;
                            v(i,j-1) = v(i,j);
                            v(i,j) = 0;
                        else
                            plaza(i,j) = 1;
                        end
                    else
                        if plaza(i, j-1) == 0
                            plaza(i, j-1) = 1;
                            plaza(i,j) = 0;
                            v(i,j-1) = v(i,j);
                            v(i,j) = 0;
                        elseif plaza(i, j+1) == 0 
                            plaza(i,j+1) = 1;
                            plaza(i,j) = 0;
                            v(i,j+1) = v(i,j);
                            v(i,j) = 0;
                        else
                            plaza(i,j) = 1;
                        end
                    end
                else
                    plaza(i,j) = 1;
                end
            end
        end
end

for i = (L-1):-1:1
    for j = 2:(W-1)
        if plaza(i,j) == -3 && rand >0.5
                        if plaza(i, j+1) == 0 && j~=W-1
                            plaza(i,j+1) = 1;
                            plaza(i,j) = 0;
                            v(i,j+1) = v(i,j);
                            v(i,j) = 0;
                        else
                            plaza(i,j) = 1;
                        end
        end
    end
end

for i = (L-1):-1:1
        if plaza(i,5) == -4
            if rand < 0.2
                        if plaza(i, 6) == 0
                            plaza(i,6) = 1;
                            plaza(i,5) = 0;
                            v(i,6) = v(i,5);
                            v(i,5) = 0;
                        else
                            plaza(i,5) = 1;
                        end
            else
                plaza(i,5) = 1;
            end
        end
end


for i = (L-1):-1:1
        if plaza(i,6) == -5
            if rand < 0.05
                        if plaza(i, 7) == 0
                            plaza(i,7) = 1;
                            plaza(i,6) = 0;
                            v(i,7) = v(i,6);
                            v(i,6) = 0;
                        else
                            plaza(i,6) = 1;
                        end
            else
                plaza(i,6) = 1;
            end
        end
end