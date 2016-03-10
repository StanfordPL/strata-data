  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  vaddpd %xmm1, %xmm1, %xmm2            #  1     0    4      OPC=vaddpd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4  5      OPC=callq_label         
  movdqu %xmm13, %xmm1                  #  3     0x9  5      OPC=movdqu_xmm_xmm      
  retq                                  #  4     0xe  1      OPC=retq                
                                                                                     
.size target, .-target
