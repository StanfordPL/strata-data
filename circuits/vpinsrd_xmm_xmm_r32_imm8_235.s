  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovd %ebx, %xmm4                    #  1     0     4      OPC=vmovd_xmm_r32          
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  vbroadcastss %xmm4, %ymm14           #  3     0x9   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm14, %xmm2, %xmm1       #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklpd %xmm1, %xmm12, %xmm1       #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
