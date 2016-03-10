  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpbroadcastb %xmm1, %xmm7        #  1     0     5      OPC=vpbroadcastb_xmm_xmm    
  vpunpckldq %xmm7, %xmm1, %xmm15  #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm1, %xmm15, %xmm5   #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  movd %xmm5, %ebx                 #  4     0xd   4      OPC=movd_r32_xmm            
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
