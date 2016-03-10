  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  vmovdqa %xmm6, %xmm5                            #  2     0x5   4      OPC=vmovdqa_xmm_xmm       
  punpckhqdq %xmm6, %xmm1                         #  3     0x9   4      OPC=punpckhqdq_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label           
  vpbroadcastd %xmm8, %xmm4                       #  5     0x12  5      OPC=vpbroadcastd_xmm_xmm  
  movq %xmm9, %xmm6                               #  6     0x17  5      OPC=movq_xmm_xmm          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1c  5      OPC=callq_label           
  retq                                            #  8     0x21  1      OPC=retq                  
                                                                                                  
.size target, .-target
