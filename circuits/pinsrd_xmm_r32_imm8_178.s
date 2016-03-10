  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm0               #  1     0     4      OPC=vmovd_xmm_r32           
  vpunpckhdq %xmm1, %xmm1, %xmm2  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vbroadcastss %xmm0, %ymm0       #  3     0x8   5      OPC=vbroadcastss_ymm_xmm    
  unpckhps %xmm2, %xmm0           #  4     0xd   3      OPC=unpckhps_xmm_xmm        
  unpcklpd %xmm0, %xmm1           #  5     0x10  4      OPC=unpcklpd_xmm_xmm        
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
