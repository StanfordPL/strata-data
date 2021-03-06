  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label          
  vzeroall                                        #  2     0x5   3      OPC=vzeroall             
  callq .move_064_128_r10_r11_xmm2                #  3     0x8   5      OPC=callq_label          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label          
  movd %ebx, %xmm9                                #  5     0x12  5      OPC=movd_xmm_r32         
  vandnpd %xmm2, %xmm4, %xmm8                     #  6     0x17  4      OPC=vandnpd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label          
  retq                                            #  8     0x20  1      OPC=retq                 
                                                                                                 
.size target, .-target
