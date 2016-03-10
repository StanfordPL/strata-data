  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                   
.target:                                #        0    0      OPC=<label>              
  vphsubd %xmm1, %xmm1, %xmm2           #  1     0    5      OPC=vphsubd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5  5      OPC=callq_label          
  movddup %xmm13, %xmm1                 #  3     0xa  5      OPC=movddup_xmm_xmm      
  retq                                  #  4     0xf  1      OPC=retq                 
                                                                                      
.size target, .-target
