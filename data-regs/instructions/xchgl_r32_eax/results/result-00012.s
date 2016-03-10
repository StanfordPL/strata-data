  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xchgl %ebx, %eax         #  1     0     2      OPC=xchgl_r32_r32  
  callq .set_szp_for_rbx   #  2     0x2   5      OPC=callq_label    
  callq .read_sf_into_rcx  #  3     0x7   5      OPC=callq_label    
  decb %al                 #  4     0xc   2      OPC=decb_r8        
  xaddl %ecx, %ebx         #  5     0xe   3      OPC=xaddl_r32_r32  
  incb %al                 #  6     0x11  2      OPC=incb_r8        
  retq                     #  7     0x13  1      OPC=retq           
                                                                    
.size target, .-target
