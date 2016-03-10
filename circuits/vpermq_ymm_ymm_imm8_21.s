  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label            
  punpcklqdq %xmm2, %xmm9             #  2     0x5   5      OPC=punpcklqdq_xmm_xmm     
  vunpcklpd %xmm9, %xmm9, %xmm8       #  3     0xa   5      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xf   5      OPC=callq_label            
  retq                                #  5     0x14  1      OPC=retq                   
                                                                                       
.size target, .-target
