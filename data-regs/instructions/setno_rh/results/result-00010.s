  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_of_into_rbx          #  1     0     5      OPC=callq_label   
  callq .move_064_032_rbx_r8d_r9d  #  2     0x5   5      OPC=callq_label   
  addw %r8w, %r8w                  #  3     0xa   4      OPC=addw_r16_r16  
  callq .read_pf_into_rcx          #  4     0xe   5      OPC=callq_label   
  movb %cl, %ah                    #  5     0x13  2      OPC=movb_rh_r8    
  retq                             #  6     0x15  1      OPC=retq          
                                                                           
.size target, .-target
