  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %ecx  #  1     0    3      OPC=movsbl_r32_rh  
  andb %cl, %bh     #  2     0x3  2      OPC=andb_rh_r8     
  xchgb %bh, %ah    #  3     0x5  2      OPC=xchgb_rh_rh    
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
