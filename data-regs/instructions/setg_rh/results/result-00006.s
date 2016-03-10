  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setnle %ah      #  1     0    3      OPC=setnle_rh    
  setnle %cl      #  2     0x3  3      OPC=setnle_r8    
  xaddb %ah, %cl  #  3     0x6  3      OPC=xaddb_r8_rh  
  retq            #  4     0x9  1      OPC=retq         
                                                        
.size target, .-target
