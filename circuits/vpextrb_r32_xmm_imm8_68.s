  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode            
.target:                                    #        0    0      OPC=<label>       
  xorl %ebx, %ebx                           #  1     0    2      OPC=xorl_r32_r32  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x2  5      OPC=callq_label   
  addb %dl, %bl                             #  3     0x7  2      OPC=addb_r8_r8    
  retq                                      #  4     0x9  1      OPC=retq          
                                                                                   
.size target, .-target
