function [RefSatellite, ProductLevel, ProcessingSatellite, savespace, MATfileFolder, DataInputRootPath, DynamicAuxiliarySMOSRootPath,...
          DynamicAuxiliarySMAPRootPath, DynamicAuxiliarySMAP09RootPath, LogsOutputRootPath, ThresholDist, ThresholdTimeDelay, ThrSameDist,...
          ThrSameTime, Threshold09Dist, Thr09SameDist, ReportFolder] = ReadConfFile(configurationPath)

            lines = string(splitlines(fileread(configurationPath)));
%             
%%         
            ConfigRightLine= contains(lines,'RefSatellite')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            RefSatellite= extractAfter(lines(ConfigRightLine),startIndex) ;

%%         
            ConfigRightLine= contains(lines,'ProductLevel')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ProductLevel= extractAfter(lines(ConfigRightLine),startIndex) ;
%%         
            ConfigRightLine= contains(lines,'ProcessingSatellite')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ProcessingSatellite= extractAfter(lines(ConfigRightLine),startIndex) ;

%%         
            ConfigRightLine= contains(lines,'savespace')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            savespace= extractAfter(lines(ConfigRightLine),startIndex) ;  
%%         
            ConfigRightLine= contains(lines,'MATfileFolder')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            MATfileFolder= extractAfter(lines(ConfigRightLine),startIndex) ;  
            MATfileFolder=char(MATfileFolder) ;
%%         
            ConfigRightLine= contains(lines,'DataInputRootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            DataInputRootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%         
            ConfigRightLine= contains(lines,'DataOutputRootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            DataOutputRootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%         
            ConfigRightLine= contains(lines,'DynamicAuxiliarySMOSRootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            DynamicAuxiliarySMOSRootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%         
            ConfigRightLine= contains(lines,'DynamicAuxiliarySMAPRootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            DynamicAuxiliarySMAPRootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%         
            ConfigRightLine= contains(lines,'DynamicAuxiliarySMAP09RootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            DynamicAuxiliarySMAP09RootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%       
            ConfigRightLine= contains(lines,'LogsOutputRootPath')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            LogsOutputRootPath= extractAfter(lines(ConfigRightLine),startIndex) ;
%%                  
            ConfigRightLine= contains(lines,'ThresholDist')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ThresholDist= extractAfter(lines(ConfigRightLine),startIndex) ; % max distance between SP and SMAP grid cell in meters
            ThresholDist=double(ThresholDist) ; 
%%         
            ConfigRightLine= contains(lines,'ThresholdTimeDelay')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ThresholdTimeDelay= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
            ThresholdTimeDelay=double(ThresholdTimeDelay)  ; 
%%         
            ConfigRightLine= contains(lines,'ThrSameDist')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ThrSameDist= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
            ThrSameDist=double(ThrSameDist)  ; % Distance tolerance for which two SMAP data can be considered equivalent

%%         
            ConfigRightLine= contains(lines,'ThrSameTime')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ThrSameTime= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
            ThrSameTime=double(ThrSameTime)  ; % time tolerance for which two SMAP data can be considered equivalent
%%         
            ConfigRightLine= contains(lines,'Threshold09Dist')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            Threshold09Dist= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
            Threshold09Dist=double(Threshold09Dist) ;    
%%         
            ConfigRightLine= contains(lines,'Thr09SameDist')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            Thr09SameDist= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
            Thr09SameDist=double(Thr09SameDist)  ; % Distance tolerance for which two SMAP data can be considered equivalent
%%         
            ConfigRightLine= contains(lines,'ReportFolder')  ;  
            ConfigRightLine= find(ConfigRightLine==1)  ;   
            startIndex= regexp(lines(ConfigRightLine),'=') ; 
            ReportFolder= extractAfter(lines(ConfigRightLine),startIndex) ; % max time delay between SP time and SMAP Sm time in hours
end