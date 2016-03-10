  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label         
  vzeroall                                        #  2     0x5   3      OPC=vzeroall            
  callq .move_byte_1_of_ymm1_to_r9b               #  3     0x8   5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm1                #  4     0xd   5      OPC=callq_label         
  callq .move_r9b_to_byte_3_of_ymm1               #  5     0x12  5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  6     0x17  5      OPC=callq_label         
  vmovss %xmm10, %xmm1, %xmm1                     #  7     0x1c  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                            #  8     0x21  1      OPC=retq                
                                                                                                
.size target, .-target
