  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgb %ah, %bl    #  1     0    2      OPC=xchgb_r8_rh    
  sbbb %bl, %ah     #  2     0x2  2      OPC=sbbb_rh_r8     
  movsbl %ah, %ebx  #  3     0x4  3      OPC=movsbl_r32_rh  
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
