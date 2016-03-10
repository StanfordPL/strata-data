  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label               
  vfnmsub213sd %xmm1, %xmm2, %xmm3  #  2     0x5   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0xa   5      OPC=callq_label               
  movq %r10, %r12                   #  4     0xf   3      OPC=movq_r64_r64              
  vzeroall                          #  5     0x12  3      OPC=vzeroall                  
  callq .move_064_128_r12_r13_xmm1  #  6     0x15  5      OPC=callq_label               
  retq                              #  7     0x1a  1      OPC=retq                      
                                                                                        
.size target, .-target
