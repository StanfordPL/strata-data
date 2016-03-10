  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label       
  vzeroall                                      #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r8_r9_xmm2                #  3     0x8   5      OPC=callq_label       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label       
  movddup %xmm5, %xmm6                          #  5     0x12  4      OPC=movddup_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  6     0x16  5      OPC=callq_label       
  callq .move_128_64_xmm2_xmm10_xmm11           #  7     0x1b  5      OPC=callq_label       
  vmovddup %ymm11, %ymm1                        #  8     0x20  5      OPC=vmovddup_ymm_ymm  
  retq                                          #  9     0x25  1      OPC=retq              
                                                                                            
.size target, .-target
