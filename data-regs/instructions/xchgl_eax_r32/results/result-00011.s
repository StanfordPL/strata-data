  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  xchgl %eax, %ebx                  #  1     0    2      OPC=xchgl_r32_r32  
  callq .move_064_032_rbx_r8d_r9d   #  2     0x2  5      OPC=callq_label    
  callq .move_r9b_to_byte_7_of_rbx  #  3     0x7  5      OPC=callq_label    
  retq                              #  4     0xc  1      OPC=retq           
                                                                            
.size target, .-target
