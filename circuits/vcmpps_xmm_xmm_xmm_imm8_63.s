  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  vzeroall                            #  1     0     3      OPC=vzeroall       
  callq .move_128_064_xmm3_r8_r9      #  2     0x3   5      OPC=callq_label    
  xchgl %r9d, %r8d                    #  3     0x8   3      OPC=xchgl_r32_r32  
  decq %r9                            #  4     0xb   3      OPC=decq_r64       
  callq .move_r8b_to_byte_27_of_ymm1  #  5     0xe   5      OPC=callq_label    
  orw %r8w, %r9w                      #  6     0x13  4      OPC=orw_r16_r16    
  decq %r8                            #  7     0x17  3      OPC=decq_r64       
  callq .move_064_128_r8_r9_xmm1      #  8     0x1a  5      OPC=callq_label    
  retq                                #  9     0x1f  1      OPC=retq           
                                                                               
.size target, .-target
