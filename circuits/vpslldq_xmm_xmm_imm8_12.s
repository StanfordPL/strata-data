  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label   
  vzeroall                                      #  2     0x5   3      OPC=vzeroall      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label   
  movd %r10d, %xmm7                             #  4     0xd   5      OPC=movd_xmm_r32  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label   
  retq                                          #  6     0x17  1      OPC=retq          
                                                                                        
.size target, .-target
