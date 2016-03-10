  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  movzbl %r9b, %r9d                         #  2     0x5   4      OPC=movzbl_r32_r8  
  callq .move_032_016_edx_r8w_r9w           #  3     0x9   5      OPC=callq_label    
  movl %r9d, %ebx                           #  4     0xe   3      OPC=movl_r32_r32   
  retq                                      #  5     0x11  1      OPC=retq           
                                                                                     
.size target, .-target
