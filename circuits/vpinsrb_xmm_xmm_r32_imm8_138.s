  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label    
  vzeroall                            #  2     0x5   3      OPC=vzeroall       
  movzbl %r11b, %r8d                  #  3     0x8   4      OPC=movzbl_r32_r8  
  xaddb %r8b, %bl                     #  4     0xc   4      OPC=xaddb_r8_r8    
  callq .move_064_128_r10_r11_xmm1    #  5     0x10  5      OPC=callq_label    
  callq .move_r8b_to_byte_10_of_ymm1  #  6     0x15  5      OPC=callq_label    
  retq                                #  7     0x1a  1      OPC=retq           
                                                                               
.size target, .-target
