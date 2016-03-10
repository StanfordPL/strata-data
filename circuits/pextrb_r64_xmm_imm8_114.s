  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  movd %xmm1, %ebx                  #  1     0    4      OPC=movd_r32_xmm   
  callq .move_byte_2_of_rbx_to_r9b  #  2     0x4  5      OPC=callq_label    
  movzbl %r9b, %ebx                 #  3     0x9  4      OPC=movzbl_r32_r8  
  retq                              #  4     0xd  1      OPC=retq           
                                                                            
.size target, .-target
