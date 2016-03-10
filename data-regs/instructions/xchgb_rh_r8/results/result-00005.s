  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode           
.target:           #        0     0      OPC=<label>      
  callq .clear_cf  #  1     0     5      OPC=callq_label  
  callq .clear_zf  #  2     0x5   5      OPC=callq_label  
  setbe %dl        #  3     0xa   3      OPC=setbe_r8     
  movb %dl, %al    #  4     0xd   2      OPC=movb_r8_r8   
  xchgb %ah, %bl   #  5     0xf   2      OPC=xchgb_r8_rh  
  cwtl             #  6     0x11  1      OPC=cwtl         
  retq             #  7     0x12  1      OPC=retq         
                                                          
.size target, .-target
