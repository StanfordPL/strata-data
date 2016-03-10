  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xchgb %ah, %bl  #  1     0    2      OPC=xchgb_r8_rh  
  sbbb %bl, %ah   #  2     0x2  2      OPC=sbbb_rh_r8   
  xchgb %bl, %ah  #  3     0x4  2      OPC=xchgb_rh_r8  
  retq            #  4     0x6  1      OPC=retq         
                                                        
.size target, .-target
