  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %ecx  #  1     0    3      OPC=movsbl_r32_r8  
  xchgb %ch, %bl    #  2     0x3  2      OPC=xchgb_r8_rh    
  subb %ah, %ch     #  3     0x5  2      OPC=subb_rh_rh     
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
