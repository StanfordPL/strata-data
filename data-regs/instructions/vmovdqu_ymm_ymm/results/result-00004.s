  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm1            #  1     0     4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmovupd %xmm11, %xmm11                #  3     0x9   5      OPC=vmovupd_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
