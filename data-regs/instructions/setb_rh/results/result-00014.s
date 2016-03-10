  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x2, %rsi  #  1     0     10     OPC=movq_r64_imm64  
  movq $0x7, %rax  #  2     0xa   10     OPC=movq_r64_imm64  
  setnae %ah       #  3     0x14  3      OPC=setnae_rh       
  adcb %al, %al    #  4     0x17  2      OPC=adcb_r8_r8      
  adcq %rsi, %rax  #  5     0x19  3      OPC=adcq_r64_r64    
  retq             #  6     0x1c  1      OPC=retq            
                                                             
.size target, .-target
