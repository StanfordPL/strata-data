  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP  Bytes  Opcode             
.target:               #        0    0      OPC=<label>        
  movzbl %bl, %r12d    #  1     0    4      OPC=movzbl_r32_r8  
  movzbl %r12b, %r12d  #  2     0x4  4      OPC=movzbl_r32_r8  
  adcb %r12b, %bl      #  3     0x8  3      OPC=adcb_r8_r8     
  retq                 #  4     0xb  1      OPC=retq           
                                                               
.size target, .-target
