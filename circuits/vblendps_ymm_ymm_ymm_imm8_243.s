  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vmaxpd %ymm3, %ymm3, %ymm1                    #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4  5      OPC=callq_label         
  movhlps %xmm2, %xmm5                          #  3     0x9  3      OPC=movhlps_xmm_xmm     
  movlhps %xmm5, %xmm1                          #  4     0xc  3      OPC=movlhps_xmm_xmm     
  retq                                          #  5     0xf  1      OPC=retq                
                                                                                             
.size target, .-target
