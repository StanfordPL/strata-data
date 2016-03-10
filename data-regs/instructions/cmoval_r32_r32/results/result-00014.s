  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  cmovnbel %ecx, %ebx               #  1     0     3      OPC=cmovnbel_r32_r32  
  popcntw %cx, %r15w                #  2     0x3   6      OPC=popcntw_r16_r16   
  cmovel %ebx, %ebx                 #  3     0x9   3      OPC=cmovel_r32_r32    
  callq .move_byte_7_of_rbx_to_r8b  #  4     0xc   5      OPC=callq_label       
  callq .move_r8b_to_byte_6_of_rbx  #  5     0x11  5      OPC=callq_label       
  retq                              #  6     0x16  1      OPC=retq              
                                                                                
.size target, .-target
