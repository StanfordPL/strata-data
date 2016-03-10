  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbq %bl, %r8  #  1     0    4      OPC=movsbq_r64_r8  
  movq %r8, %rsp   #  2     0x4  3      OPC=movq_r64_r64   
  sarw $0x1, %sp   #  3     0x7  3      OPC=sarw_r16_one   
  xchgb %bl, %spl  #  4     0xa  3      OPC=xchgb_r8_r8    
  retq             #  5     0xd  1      OPC=retq           
                                                           
.size target, .-target
