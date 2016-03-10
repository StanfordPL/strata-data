  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vpxor %xmm1, %xmm1, %xmm10         #  1     0     4      OPC=vpxor_xmm_xmm_xmm    
  vhaddps %ymm10, %ymm10, %ymm11     #  2     0x4   5      OPC=vhaddps_ymm_ymm_ymm  
  vaddpd %xmm1, %xmm11, %xmm2        #  3     0x9   4      OPC=vaddpd_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm8_xmm9  #  4     0xd   5      OPC=callq_label          
  movd %xmm9, %ebx                   #  5     0x12  5      OPC=movd_r32_xmm         
  retq                               #  6     0x17  1      OPC=retq                 
                                                                                    
.size target, .-target
