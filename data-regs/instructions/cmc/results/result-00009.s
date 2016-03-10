  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_cf_into_rcx          #  1     0     5      OPC=callq_label   
  callq .read_cf_into_rbx          #  2     0x5   5      OPC=callq_label   
  callq .move_064_032_rcx_r8d_r9d  #  3     0xa   5      OPC=callq_label   
  callq .move_032_016_ecx_r8w_r9w  #  4     0xf   5      OPC=callq_label   
  notl %r9d                        #  5     0x14  3      OPC=notl_r32      
  addq %r9, %rbx                   #  6     0x17  3      OPC=addq_r64_r64  
  xaddb %bl, %bh                   #  7     0x1a  3      OPC=xaddb_rh_r8   
  retq                             #  8     0x1d  1      OPC=retq          
                                                                           
.size target, .-target
