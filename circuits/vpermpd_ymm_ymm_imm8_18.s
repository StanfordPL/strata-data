  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label         
  punpcklqdq %xmm8, %xmm9               #  2     0x5   5      OPC=punpcklqdq_xmm_xmm  
  movddup %xmm8, %xmm8                  #  3     0xa   5      OPC=movddup_xmm_xmm     
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xf   5      OPC=callq_label         
  movsd %xmm11, %xmm8                   #  5     0x14  5      OPC=movsd_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x19  5      OPC=callq_label         
  retq                                  #  7     0x1e  1      OPC=retq                
                                                                                      
.size target, .-target
