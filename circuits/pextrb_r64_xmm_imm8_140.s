  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  xorl %edi, %edi                           #  1     0     2      OPC=xorl_r32_r32  
  callq .read_sf_into_rbx                   #  2     0x2   5      OPC=callq_label   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label   
  xaddb %bl, %r9b                           #  4     0xc   4      OPC=xaddb_r8_r8   
  retq                                      #  5     0x10  1      OPC=retq          
                                                                                    
.size target, .-target
