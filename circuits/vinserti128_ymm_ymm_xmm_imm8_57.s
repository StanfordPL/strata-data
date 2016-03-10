  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  movupd %xmm3, %xmm13                  #  1     0     5      OPC=movupd_xmm_xmm      
  vminsd %xmm2, %xmm2, %xmm1            #  2     0x5   4      OPC=vminsd_xmm_xmm_xmm  
  movdqa %xmm1, %xmm12                  #  3     0x9   5      OPC=movdqa_xmm_xmm      
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
