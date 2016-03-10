  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  setc %r10b        #  1     0    4      OPC=setc_r8      
  salb $0x1, %r10b  #  2     0x4  3      OPC=salb_r8_one  
  callq .clear_cf   #  3     0x7  5      OPC=callq_label  
  setbe %ah         #  4     0xc  3      OPC=setbe_rh     
  retq              #  5     0xf  1      OPC=retq         
                                                          
.size target, .-target
