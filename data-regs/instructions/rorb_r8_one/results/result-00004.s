  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %bl, %bh     #  1     0    2      OPC=movb_rh_r8     
  sarw $0x1, %bx    #  2     0x2  3      OPC=sarw_r16_one   
  movsbl %bl, %edx  #  3     0x5  3      OPC=movsbl_r32_r8  
  addb %bl, %dl     #  4     0x8  2      OPC=addb_r8_r8     
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
