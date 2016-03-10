  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovdqu %ymm2, %ymm1                #  1     0     4      OPC=vmovdqu_ymm_ymm        
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  vunpcklpd %xmm9, %xmm9, %xmm5       #  3     0x9   5      OPC=vunpcklpd_xmm_xmm_xmm  
  punpckhqdq %xmm5, %xmm1             #  4     0xe   4      OPC=punpckhqdq_xmm_xmm     
  retq                                #  5     0x12  1      OPC=retq                   
                                                                                       
.size target, .-target
