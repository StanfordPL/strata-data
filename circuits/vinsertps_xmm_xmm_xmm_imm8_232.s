  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                    
.target:                                        #        0    0      OPC=<label>               
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label           
  vbroadcastsd %xmm7, %ymm11                    #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm  
  vmovsd %xmm2, %xmm11, %xmm1                   #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                          #  4     0xe  1      OPC=retq                  
                                                                                               
.size target, .-target
