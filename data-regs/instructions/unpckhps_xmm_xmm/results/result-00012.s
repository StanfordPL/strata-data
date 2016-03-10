  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  unpckhpd %xmm2, %xmm1                           #  1     0     4      OPC=unpckhpd_xmm_xmm      
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm8_xmm9               #  3     0x9   5      OPC=callq_label           
  pmovzxdq %xmm8, %xmm15                          #  4     0xe   6      OPC=pmovzxdq_xmm_xmm      
  vmovhlps %xmm15, %xmm8, %xmm10                  #  5     0x14  5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label           
  retq                                            #  7     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
