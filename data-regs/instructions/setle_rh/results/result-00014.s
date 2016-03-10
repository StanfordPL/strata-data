  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_zf_into_rbx          #  1     0     5      OPC=callq_label   
  setnge %bh                       #  2     0x5   3      OPC=setnge_rh     
  callq .move_032_016_ebx_r8w_r9w  #  3     0x8   5      OPC=callq_label   
  xorw %bx, %r9w                   #  4     0xd   4      OPC=xorw_r16_r16  
  setnz %ah                        #  5     0x11  3      OPC=setnz_rh      
  retq                             #  6     0x14  1      OPC=retq          
                                                                           
.size target, .-target
