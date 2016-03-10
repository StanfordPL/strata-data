  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  xchgl %ebx, %eax                  #  1     0    2      OPC=xchgl_r32_r32  
  callq .move_byte_4_of_rbx_to_r9b  #  2     0x2  5      OPC=callq_label    
  callq .move_r9b_to_byte_5_of_rbx  #  3     0x7  5      OPC=callq_label    
  retq                              #  4     0xc  1      OPC=retq           
                                                                            
.size target, .-target
