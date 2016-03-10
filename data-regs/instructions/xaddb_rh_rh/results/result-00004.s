  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bh, %ebx  #  1     0    3      OPC=movsbl_r32_rh  
  xaddb %bl, %ah    #  2     0x3  3      OPC=xaddb_rh_r8    
  movb %bl, %bh     #  3     0x6  2      OPC=movb_rh_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
