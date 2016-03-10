  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  orw %r9w, %dx                             #  2     0x5   4      OPC=orw_r16_r16      
  callq .read_cf_into_rbx                   #  3     0x9   5      OPC=callq_label      
  cmovaew %r9w, %bx                         #  4     0xe   5      OPC=cmovaew_r16_r16  
  retq                                      #  5     0x13  1      OPC=retq             
                                                                                       
.size target, .-target
