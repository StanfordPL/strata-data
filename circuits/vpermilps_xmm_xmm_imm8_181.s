  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label           
  vzeroall                                      #  2     0x5   3      OPC=vzeroall              
  vmovd %r12d, %xmm7                            #  3     0x8   5      OPC=vmovd_xmm_r32         
  movd %r13d, %xmm6                             #  4     0xd   5      OPC=movd_xmm_r32          
  movd %r11d, %xmm4                             #  5     0x12  5      OPC=movd_xmm_r32          
  vpbroadcastd %xmm4, %xmm5                     #  6     0x17  5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1c  5      OPC=callq_label           
  retq                                          #  8     0x21  1      OPC=retq                  
                                                                                                
.size target, .-target
