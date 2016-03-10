  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  punpckhqdq %xmm6, %xmm1                         #  2     0x5   4      OPC=punpckhqdq_xmm_xmm    
  vmovlhps %xmm7, %xmm1, %xmm6                    #  3     0x9   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2    #  4     0xd   5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label           
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label           
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
