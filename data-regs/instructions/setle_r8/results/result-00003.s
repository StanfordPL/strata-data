  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  stc             #  1     0    1      OPC=stc          
  setle %ch       #  2     0x1  3      OPC=setle_rh     
  setnae %bl      #  3     0x4  3      OPC=setnae_r8    
  xaddb %bl, %ch  #  4     0x7  3      OPC=xaddb_rh_r8  
  retq            #  5     0xa  1      OPC=retq         
                                                        
.size target, .-target
