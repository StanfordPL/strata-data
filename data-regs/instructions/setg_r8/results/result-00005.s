  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  setnle %r11b      #  1     0    4      OPC=setnle_r8     
  movb %r11b, %spl  #  2     0x4  3      OPC=movb_r8_r8    
  xorq %rbx, %rbx   #  3     0x7  3      OPC=xorq_r64_r64  
  xchgb %bl, %spl   #  4     0xa  3      OPC=xchgb_r8_r8   
  retq              #  5     0xd  1      OPC=retq          
                                                           
.size target, .-target
