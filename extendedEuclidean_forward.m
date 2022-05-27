function [d, q, a, b, f] = extendedEuclidean_forward(p, q)

f = [];

   while (q(end) ~= 0)
       f = [f floor(p(end)/q(end))];
       p = [p q(end)];
       q = [q mod(p(end-1), q(end))];
   end
               

         q = q(1:(end));
       
         d = p(1:(end-1));
         a = 0;
         b = 1;
         
         
       
         numberOfSteps = numel(f) - 1;
         
        % fprintf ('Euclidean algorithm. Forward process.\n\n');
         %for i = 1:numberOfSteps+1
            % fprintf('%d = %d * %d + %d \n', d(i), f(i), q(i), q(i+1));
         %end
         
        % fprintf ('\n\n');
end
