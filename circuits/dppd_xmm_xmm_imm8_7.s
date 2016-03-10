  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpbroadcastb %xmm1, %ymm13     #  1     0     5      OPC=vpbroadcastb_ymm_xmm  
  vpxor %xmm1, %xmm1, %xmm11     #  2     0x5   4      OPC=vpxor_xmm_xmm_xmm     
  vhaddpd %xmm13, %xmm11, %xmm8  #  3     0x9   5      OPC=vhaddpd_xmm_xmm_xmm   
  movq %xmm8, %xmm1              #  4     0xe   5      OPC=movq_xmm_xmm          
  retq                           #  5     0x13  1      OPC=retq                  
                                                                                 
.size target, .-target
