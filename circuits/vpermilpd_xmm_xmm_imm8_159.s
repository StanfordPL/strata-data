  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label      
  vzeroall                          #  2     0x5   3      OPC=vzeroall         
  xaddw %r12w, %r12w                #  3     0x8   5      OPC=xaddw_r16_r16    
  callq .move_064_128_r12_r13_xmm1  #  4     0xd   5      OPC=callq_label      
  movhlps %xmm1, %xmm1              #  5     0x12  3      OPC=movhlps_xmm_xmm  
  retq                              #  6     0x15  1      OPC=retq             
                                                                               
.size target, .-target
