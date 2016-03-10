  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vmulsd %xmm2, %xmm12, %xmm5          #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm   
  vhaddpd %xmm13, %xmm5, %xmm3         #  3     0x9   5      OPC=vhaddpd_xmm_xmm_xmm  
  movddup %xmm3, %xmm1                 #  4     0xe   4      OPC=movddup_xmm_xmm      
  retq                                 #  5     0x12  1      OPC=retq                 
                                                                                      
.size target, .-target
