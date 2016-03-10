  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  movss %xmm13, %xmm12                  #  2     0x5   5      OPC=movss_xmm_xmm       
  callq .move_128_64_xmm2_xmm8_xmm9     #  3     0xa   5      OPC=callq_label         
  punpcklqdq %xmm8, %xmm13              #  4     0xf   5      OPC=punpcklqdq_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label         
  vmovddup %xmm13, %xmm8                #  6     0x19  5      OPC=vmovddup_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1     #  7     0x1e  5      OPC=callq_label         
  retq                                  #  8     0x23  1      OPC=retq                
                                                                                      
.size target, .-target
