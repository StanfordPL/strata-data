  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  callq .read_cf_into_rcx          #  1     0     5      OPC=callq_label      
  callq .move_032_016_ecx_r8w_r9w  #  2     0x5   5      OPC=callq_label      
  callq .move_016_032_r8w_r9w_ebx  #  3     0xa   5      OPC=callq_label      
  popcntw %bx, %ax                 #  4     0xf   5      OPC=popcntw_r16_r16  
  callq .set_szp_for_ebx           #  5     0x14  5      OPC=callq_label      
  setnz %ah                        #  6     0x19  3      OPC=setnz_rh         
  incw %ax                         #  7     0x1c  3      OPC=incw_r16         
  retq                             #  8     0x1f  1      OPC=retq             
                                                                              
.size target, .-target
