  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bh, %edx  #  1     0    3      OPC=movsbl_r32_rh  
  movb %ah, %bh     #  2     0x3  2      OPC=movb_rh_rh     
  xaddb %ah, %dl    #  3     0x5  3      OPC=xaddb_r8_rh    
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
