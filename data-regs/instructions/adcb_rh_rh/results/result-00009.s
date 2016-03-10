  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %eax  #  1     0    3      OPC=movzbl_r32_rh  
  adcb %bh, %al     #  2     0x3  2      OPC=adcb_r8_rh     
  setl %ah          #  3     0x5  3      OPC=setl_rh        
  xchgb %ah, %al    #  4     0x8  2      OPC=xchgb_r8_rh    
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
