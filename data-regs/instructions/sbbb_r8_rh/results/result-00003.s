  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  xchgb %bl, %dh    #  2     0x3  2      OPC=xchgb_rh_r8    
  sbbb %ah, %dh     #  3     0x5  2      OPC=sbbb_rh_rh     
  xchgb %dh, %bl    #  4     0x7  2      OPC=xchgb_r8_rh    
  retq              #  5     0x9  1      OPC=retq           
                                                            
.size target, .-target
