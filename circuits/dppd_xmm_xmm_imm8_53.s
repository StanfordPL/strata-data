  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm4           #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label          
  vhaddpd %xmm4, %xmm4, %xmm7          #  3     0x9   4      OPC=vhaddpd_xmm_xmm_xmm  
  movdqa %xmm11, %xmm1                 #  4     0xd   5      OPC=movdqa_xmm_xmm       
  movhlps %xmm7, %xmm1                 #  5     0x12  3      OPC=movhlps_xmm_xmm      
  retq                                 #  6     0x15  1      OPC=retq                 
                                                                                      
.size target, .-target
