  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_pf_into_rbx            #  1     0     5      OPC=callq_label  
  incw %bx                           #  2     0x5   3      OPC=incw_r16     
  callq .move_064_032_rbx_r10d_r11d  #  3     0x8   5      OPC=callq_label  
  incl %r10d                         #  4     0xd   3      OPC=incl_r32     
  setnp %ah                          #  5     0x10  3      OPC=setnp_rh     
  retq                               #  6     0x13  1      OPC=retq         
                                                                            
.size target, .-target
