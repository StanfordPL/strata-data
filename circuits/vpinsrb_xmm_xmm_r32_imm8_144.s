  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label  
  callq .move_016_008_bx_r12b_r13b  #  2     0x5   5      OPC=callq_label  
  vzeroall                          #  3     0xa   3      OPC=vzeroall     
  xchgb %r12b, %r10b                #  4     0xd   3      OPC=xchgb_r8_r8  
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label  
  retq                              #  6     0x15  1      OPC=retq         
                                                                           
.size target, .-target
