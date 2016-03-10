  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  punpcklqdq %xmm2, %xmm7                       #  2     0x5   4      OPC=punpcklqdq_xmm_xmm  
  vmovdqa %ymm2, %ymm1                          #  3     0x9   4      OPC=vmovdqa_ymm_ymm     
  punpckhqdq %xmm7, %xmm1                       #  4     0xd   4      OPC=punpckhqdq_xmm_xmm  
  retq                                          #  5     0x11  1      OPC=retq                
                                                                                              
.size target, .-target
