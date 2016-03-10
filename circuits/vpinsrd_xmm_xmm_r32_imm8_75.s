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
  callq .move_064_128_r8_r9_xmm3                #  3     0x8   5      OPC=callq_label      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label      
  movhlps %xmm3, %xmm6                          #  5     0x12  3      OPC=movhlps_xmm_xmm  
  movl %ebx, %r12d                              #  6     0x15  3      OPC=movl_r32_r32     
  movq %r12, %xmm7                              #  7     0x18  5      OPC=movq_xmm_r64     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x1d  5      OPC=callq_label      
  retq                                          #  9     0x22  1      OPC=retq             
                                                                                           
.size target, .-target
