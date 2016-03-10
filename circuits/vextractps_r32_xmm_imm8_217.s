  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %xmm1, %xmm1, %xmm12  #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastb %xmm12, %ymm3       #  2     0x4   5      OPC=vpbroadcastb_ymm_xmm    
  vunpckhps %xmm3, %xmm12, %xmm4   #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovd %xmm4, %ebx                #  4     0xd   4      OPC=vmovd_r32_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
