  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label    
  subw %r12w, %r13w                 #  3     0xa   4      OPC=subw_r16_r16   
  vzeroall                          #  4     0xe   3      OPC=vzeroall       
  xchgq %r10, %r13                  #  5     0x11  3      OPC=xchgq_r64_r64  
  callq .move_064_128_r12_r13_xmm1  #  6     0x14  5      OPC=callq_label    
  retq                              #  7     0x19  1      OPC=retq           
                                                                             
.size target, .-target
