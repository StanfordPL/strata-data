  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovsxdq %xmm3, %xmm5  #  1     0     5      OPC=vpmovsxdq_xmm_xmm  
  por %xmm5, %xmm5        #  2     0x5   4      OPC=por_xmm_xmm        
  vsqrtps %xmm5, %xmm13   #  3     0x9   4      OPC=vsqrtps_xmm_xmm    
  divss %xmm13, %xmm3     #  4     0xd   5      OPC=divss_xmm_xmm      
  punpckhwd %xmm3, %xmm2  #  5     0x12  4      OPC=punpckhwd_xmm_xmm  
  vmovaps %xmm2, %xmm1    #  6     0x16  4      OPC=vmovaps_xmm_xmm    
  retq                    #  7     0x1a  1      OPC=retq               
                                                                       
.size target, .-target
