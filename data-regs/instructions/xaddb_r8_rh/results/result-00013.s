  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edi  #  1     0    3      OPC=movzbl_r32_rh  
  movb %bl, %ah     #  2     0x3  2      OPC=movb_rh_r8     
  xaddb %dil, %bl   #  3     0x5  4      OPC=xaddb_r8_r8    
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
