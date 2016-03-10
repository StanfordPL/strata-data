  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setl %bh        #  1     0    3      OPC=setl_rh      
  salb $0x1, %bh  #  2     0x3  2      OPC=salb_rh_one  
  setbe %ah       #  3     0x5  3      OPC=setbe_rh     
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
