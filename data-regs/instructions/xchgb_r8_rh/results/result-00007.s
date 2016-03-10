  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbw %ah, %ax   #  1     0    4      OPC=movsbw_r16_rh  
  movsbl %bl, %edx  #  2     0x4  3      OPC=movsbl_r32_r8  
  xaddb %ah, %dl    #  3     0x7  3      OPC=xaddb_r8_rh    
  cwtl              #  4     0xa  1      OPC=cwtl           
  movb %al, %bl     #  5     0xb  2      OPC=movb_r8_r8     
  retq              #  6     0xd  1      OPC=retq           
                                                            
.size target, .-target
