function index=filesearch(fd,fns)
%fd:file sets in the direction
%fns: string in the file name
%index: if output index is 0, means the search is failed, otherwise, the
%search is successful, and output index is the result
n = length(fd);
i=1;
index=0;
while(i<=n)
      fn = fd(i).name;                              % Store the name of the file
      search=regexp(fn,fns,'once');
      if ~isempty(search)
          index=i;
          return;
      else
          i=i+1;
      end
end
