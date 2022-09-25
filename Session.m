classdef Session < nansen.metadata.abstract.BaseSchema
    
    
    properties (Constant, Hidden)
        ANCESTOR = 'N/A'
        IDNAME = 'id'
    end
        

    methods 
        
        function obj = Session(varargin)
            
            obj@nansen.metadata.abstract.BaseSchema(varargin{:})
            
            [nvPairs, ~] = utility.getnvpairs(varargin);

            
            if ~all([obj.IsConstructed])
                
                % Todo
                %constructFromAllenTable(obj, allenTable)

            end
            
        end

    end
    
    methods
        
        function constructFromAllenTable(obj, allenTable)
            
            
            
        end
        
    end
    
    
end