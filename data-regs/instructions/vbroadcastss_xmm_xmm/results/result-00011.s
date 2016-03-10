  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label      
  vzeroall                                        #  2     0x5   3      OPC=vzeroall         
  vmovd %eax, %xmm11                              #  3     0x8   4      OPC=vmovd_xmm_r32    
  vmovapd %xmm11, %xmm10                          #  4     0xc   5      OPC=vmovapd_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x11  5      OPC=callq_label      
  callq .move_128_64_xmm1_xmm8_xmm9               #  6     0x16  5      OPC=callq_label      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label      
  retq                                            #  8     0x20  1      OPC=retq             
                                                                                             
.size target, .-target
