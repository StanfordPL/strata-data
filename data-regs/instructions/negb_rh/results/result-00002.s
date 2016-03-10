  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8     
  movzbl %ah, %ebx  #  2     0x2  3      OPC=movzbl_r32_rh  
  negw %ax          #  3     0x5  3      OPC=negw_r16       
  negb %bl          #  4     0x8  2      OPC=negb_r8        
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
