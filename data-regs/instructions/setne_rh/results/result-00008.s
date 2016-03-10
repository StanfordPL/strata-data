  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label  
  decb %r10b                         #  3     0xa   3      OPC=decb_r8      
  setnz %ah                          #  4     0xd   3      OPC=setnz_rh     
  retq                               #  5     0x10  1      OPC=retq         
                                                                            
.size target, .-target
