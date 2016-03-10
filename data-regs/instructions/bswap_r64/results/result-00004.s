  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label    
  bswap %r12d                        #  2     0x5   3      OPC=bswap_r32      
  bswap %r13d                        #  3     0x8   3      OPC=bswap_r32      
  xchgl %r12d, %r13d                 #  4     0xb   3      OPC=xchgl_r32_r32  
  callq .move_032_064_r12d_r13d_rbx  #  5     0xe   5      OPC=callq_label    
  retq                               #  6     0x13  1      OPC=retq           
                                                                              
.size target, .-target
