  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  vpandn %xmm2, %xmm1, %xmm3            #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label         
  movdqu %xmm13, %xmm1                  #  3     0x9  5      OPC=movdqu_xmm_xmm      
  retq                                  #  4     0xe  1      OPC=retq                
                                                                                     
.size target, .-target
