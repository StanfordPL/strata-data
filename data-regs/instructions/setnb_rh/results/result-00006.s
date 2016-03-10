  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  callq .read_cf_into_rbx          #  1     0     5      OPC=callq_label      
  callq .move_032_016_ebx_r8w_r9w  #  2     0x5   5      OPC=callq_label      
  incw %r9w                        #  3     0xa   4      OPC=incw_r16         
  popcntq %rbx, %r12               #  4     0xe   5      OPC=popcntq_r64_r64  
  xorw %r12w, %r9w                 #  5     0x13  4      OPC=xorw_r16_r16     
  setnp %ah                        #  6     0x17  3      OPC=setnp_rh         
  retq                             #  7     0x1a  1      OPC=retq             
                                                                              
.size target, .-target
