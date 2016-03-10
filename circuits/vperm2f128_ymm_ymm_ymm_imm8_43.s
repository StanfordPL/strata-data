  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovaps %ymm3, %ymm11                           #  2     0x5   4      OPC=vmovaps_ymm_ymm     
  punpckhqdq %xmm8, %xmm10                        #  3     0x9   5      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1            #  4     0xe   5      OPC=callq_label         
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
