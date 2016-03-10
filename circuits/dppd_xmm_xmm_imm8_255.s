  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm9           #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  movdqu %xmm9, %xmm8                  #  2     0x4   5      OPC=movdqu_xmm_xmm      
  haddpd %xmm8, %xmm1                  #  3     0x9   5      OPC=haddpd_xmm_xmm      
  callq .move_128_64_xmm1_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  movsd %xmm11, %xmm1                  #  5     0x13  5      OPC=movsd_xmm_xmm       
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target
