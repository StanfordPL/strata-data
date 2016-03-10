  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movsbq %bl, %r14    #  1     0     4      OPC=movsbq_r64_r8   
  xchgw %r14w, %bx    #  2     0x4   4      OPC=xchgw_r16_r16   
  xchgw %r14w, %r14w  #  3     0x8   4      OPC=xchgw_r16_r16   
  movslq %r14d, %r9   #  4     0xc   3      OPC=movslq_r64_r32  
  adcw %r9w, %r9w     #  5     0xf   4      OPC=adcw_r16_r16    
  xchgw %r9w, %bx     #  6     0x13  4      OPC=xchgw_r16_r16   
  retq                #  7     0x17  1      OPC=retq            
                                                                
.size target, .-target
