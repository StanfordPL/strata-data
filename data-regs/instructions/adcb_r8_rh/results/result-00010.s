  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edx  #  1     0    3      OPC=movzbl_r32_rh  
  adcb %bl, %dl     #  2     0x3  2      OPC=adcb_r8_r8     
  movsbl %dl, %ebx  #  3     0x5  3      OPC=movsbl_r32_r8  
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
