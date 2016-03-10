  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode            
.target:                                    #        0    0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label   
  xorl %edx, %edx                           #  2     0x5  2      OPC=xorl_r32_r32  
  callq .read_sf_into_rbx                   #  3     0x7  5      OPC=callq_label   
  xchgb %ah, %bl                            #  4     0xc  2      OPC=xchgb_r8_rh   
  retq                                      #  5     0xe  1      OPC=retq          
                                                                                   
.size target, .-target
