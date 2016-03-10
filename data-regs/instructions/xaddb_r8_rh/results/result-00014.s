  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rdx  #  1     0    4      OPC=movsbq_r64_r8  
  movsbw %ah, %di   #  2     0x4  4      OPC=movsbw_r16_rh  
  movb %dl, %ah     #  3     0x8  2      OPC=movb_rh_r8     
  xaddb %dil, %bl   #  4     0xa  4      OPC=xaddb_r8_r8    
  retq              #  5     0xe  1      OPC=retq           
                                                            
.size target, .-target
