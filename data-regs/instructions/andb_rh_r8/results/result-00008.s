  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  andb %ah, %bl    #  1     0    2      OPC=andb_r8_rh     
  movzbw %ah, %sp  #  2     0x2  4      OPC=movzbw_r16_rh  
  rolw $0x1, %sp   #  3     0x6  3      OPC=rolw_r16_one   
  xchgb %bl, %ah   #  4     0x9  2      OPC=xchgb_rh_r8    
  retq             #  5     0xb  1      OPC=retq           
                                                           
.size target, .-target
