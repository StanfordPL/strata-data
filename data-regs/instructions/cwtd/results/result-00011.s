  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  incb %al          #  1     0    2      OPC=incb_r8        
  xchgb %ah, %al    #  2     0x2  2      OPC=xchgb_r8_rh    
  cbtw              #  3     0x4  2      OPC=cbtw           
  movb %ah, %al     #  4     0x6  2      OPC=movb_r8_rh     
  movzbl %al, %edx  #  5     0x8  3      OPC=movzbl_r32_r8  
  xchgw %ax, %dx    #  6     0xb  3      OPC=xchgw_r16_r16  
  retq              #  7     0xe  1      OPC=retq           
                                                            
.size target, .-target
