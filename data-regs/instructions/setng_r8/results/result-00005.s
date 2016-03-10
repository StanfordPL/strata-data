  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setz %bl        #  1     0    3      OPC=setz_r8      
  setle %ch       #  2     0x3  3      OPC=setle_rh     
  xchgb %bl, %ch  #  3     0x6  2      OPC=xchgb_rh_r8  
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
