  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setl %dl        #  1     0    3      OPC=setl_r8      
  setnge %ch      #  2     0x3  3      OPC=setnge_rh    
  xaddb %ch, %dl  #  3     0x6  3      OPC=xaddb_r8_rh  
  setpe %ah       #  4     0x9  3      OPC=setpe_rh     
  retq            #  5     0xc  1      OPC=retq         
                                                        
.size target, .-target
