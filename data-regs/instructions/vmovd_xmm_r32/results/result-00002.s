  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  vzeroall                            #  1     0     3      OPC=vzeroall       
  callq .move_128_064_xmm2_r8_r9      #  2     0x3   5      OPC=callq_label    
  callq .move_r8b_to_byte_3_of_ymm1   #  3     0x8   5      OPC=callq_label    
  xchgl %ebx, %r8d                    #  4     0xd   3      OPC=xchgl_r32_r32  
  callq .move_r9b_to_byte_27_of_ymm1  #  5     0x10  5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm1      #  6     0x15  5      OPC=callq_label    
  retq                                #  7     0x1a  1      OPC=retq           
                                                                               
.size target, .-target
