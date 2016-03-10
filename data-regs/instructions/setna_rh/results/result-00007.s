  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text        #  Line  RIP  Bytes  Opcode         
.target:      #        0    0      OPC=<label>    
  setnbe %al  #  1     0    3      OPC=setnbe_r8  
  setbe %ah   #  2     0x3  3      OPC=setbe_rh   
  incw %ax    #  3     0x6  3      OPC=incw_r16   
  retq        #  4     0x9  1      OPC=retq       
                                                  
.size target, .-target
