  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode            
.target:            #        0     0      OPC=<label>       
  setbe %bpl        #  1     0     4      OPC=setbe_r8      
  xorl %edi, %edi   #  2     0x4   3      OPC=xorl_r32_r32  
  setb %dil         #  3     0x7   3      OPC=setb_r8       
  xaddb %dil, %bpl  #  4     0xa   4      OPC=xaddb_r8_r8   
  setnz %ah         #  5     0xe   3      OPC=setnz_rh      
  retq              #  6     0x11  1      OPC=retq          
                                                            
.size target, .-target
