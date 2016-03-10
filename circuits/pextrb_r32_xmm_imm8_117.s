  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  xorl %edx, %r8d                           #  2     0x5   3      OPC=xorl_r32_r32  
  callq .read_cf_into_rbx                   #  3     0x8   5      OPC=callq_label   
  xaddb %bl, %dh                            #  4     0xd   3      OPC=xaddb_rh_r8   
  retq                                      #  5     0x10  1      OPC=retq          
                                                                                    
.size target, .-target
