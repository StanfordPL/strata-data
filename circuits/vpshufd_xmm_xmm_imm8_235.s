  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_256_xmm10_xmm11_ymm3            #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm11, %xmm12                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm12, %xmm2, %xmm1                     #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
