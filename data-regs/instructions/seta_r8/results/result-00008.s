  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setbe %r10b              #  1     0    4      OPC=setbe_r8     
  shlb $0x1, %r10b         #  2     0x4  3      OPC=shlb_r8_one  
  callq .read_pf_into_rbx  #  3     0x7  5      OPC=callq_label  
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
