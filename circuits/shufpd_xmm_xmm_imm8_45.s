  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm10, %xmm2, %xmm0                   #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  vmovddup %ymm0, %ymm6                           #  3     0xa   4      OPC=vmovddup_ymm_ymm      
  unpckhpd %xmm6, %xmm1                           #  4     0xe   4      OPC=unpckhpd_xmm_xmm      
  retq                                            #  5     0x12  1      OPC=retq                  
                                                                                                  
.size target, .-target
