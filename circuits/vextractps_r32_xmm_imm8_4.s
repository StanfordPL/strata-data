  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                    
.target:                                        #        0    0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm1                     #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5  5      OPC=callq_label           
  movd %xmm4, %ebx                              #  3     0xa  4      OPC=movd_r32_xmm          
  retq                                          #  4     0xe  1      OPC=retq                  
                                                                                               
.size target, .-target