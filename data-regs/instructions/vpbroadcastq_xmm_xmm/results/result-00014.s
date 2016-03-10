  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label      
  rolw $0x1, %r13w                      #  2     0x5   4      OPC=rolw_r16_one     
  vzeroall                              #  3     0x9   3      OPC=vzeroall         
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xc   5      OPC=callq_label      
  callq .move_064_128_r12_r13_xmm1      #  5     0x11  5      OPC=callq_label      
  movlhps %xmm1, %xmm1                  #  6     0x16  3      OPC=movlhps_xmm_xmm  
  retq                                  #  7     0x19  1      OPC=retq             
                                                                                   
.size target, .-target
