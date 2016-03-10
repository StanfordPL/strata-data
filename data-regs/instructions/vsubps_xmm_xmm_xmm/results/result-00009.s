  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  subps %xmm3, %xmm2                #  1     0     3      OPC=subps_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label    
  xchgb %r13b, %r13b                #  3     0x8   3      OPC=xchgb_r8_r8    
  vzeroall                          #  4     0xb   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1  #  5     0xe   5      OPC=callq_label    
  retq                              #  6     0x13  1      OPC=retq           
                                                                             
.size target, .-target
