  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label      
  vzeroall                          #  3     0xa   3      OPC=vzeroall         
  callq .move_064_128_r12_r13_xmm2  #  4     0xd   5      OPC=callq_label      
  xchgl %r11d, %r12d                #  5     0x12  3      OPC=xchgl_r32_r32    
  callq .move_064_128_r10_r11_xmm1  #  6     0x15  5      OPC=callq_label      
  movlhps %xmm2, %xmm1              #  7     0x1a  3      OPC=movlhps_xmm_xmm  
  retq                              #  8     0x1d  1      OPC=retq             
                                                                               
.size target, .-target
