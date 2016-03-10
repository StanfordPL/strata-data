  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label   
  vzeroall                                      #  2     0x5   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm2              #  3     0x8   5      OPC=callq_label   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label   
  orl %ebx, %ebx                                #  5     0x12  2      OPC=orl_r32_r32   
  movq %rbx, %xmm7                              #  6     0x14  5      OPC=movq_xmm_r64  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x19  5      OPC=callq_label   
  retq                                          #  8     0x1e  1      OPC=retq          
                                                                                        
.size target, .-target
