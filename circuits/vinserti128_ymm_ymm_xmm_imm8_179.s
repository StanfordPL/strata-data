  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpandn %ymm2, %ymm2, %ymm1            #  2     0x5   4      OPC=vpandn_ymm_ymm_ymm  
  vpaddd %xmm1, %xmm3, %xmm11           #  3     0x9   4      OPC=vpaddd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
