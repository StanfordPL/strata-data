  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  movzbl %r9b, %esp                         #  2     0x5  4      OPC=movzbl_r32_r8  
  movzbl %spl, %ebx                         #  3     0x9  4      OPC=movzbl_r32_r8  
  retq                                      #  4     0xd  1      OPC=retq           
                                                                                    
.size target, .-target
