  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  movdqa %xmm11, %xmm7                  #  2     0x5  5      OPC=movdqa_xmm_xmm      
  vmaxpd %xmm7, %xmm7, %xmm1            #  3     0xa  4      OPC=vmaxpd_xmm_xmm_xmm  
  retq                                  #  4     0xe  1      OPC=retq                
                                                                                     
.size target, .-target
