  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode           
.target:                                        #        0     0      OPC=<label>      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label  
  orw %r11w, %r12w                              #  2     0x5   4      OPC=orw_r16_r16  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label  
  callq .read_cf_into_rbx                       #  4     0xe   5      OPC=callq_label  
  xaddb %bl, %ah                                #  5     0x13  3      OPC=xaddb_rh_r8  
  retq                                          #  6     0x16  1      OPC=retq         
                                                                                       
.size target, .-target
