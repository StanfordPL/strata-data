  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movzbw %ah, %di    #  1     0     4      OPC=movzbw_r16_rh   
  movq $0x1, %r14    #  2     0x4   10     OPC=movq_r64_imm64  
  movswq %r14w, %r8  #  3     0xe   4      OPC=movswq_r64_r16  
  xorl %r14d, %r8d   #  4     0x12  3      OPC=xorl_r32_r32    
  adcb %dil, %bl     #  5     0x15  3      OPC=adcb_r8_r8      
  xchgb %ah, %bl     #  6     0x18  2      OPC=xchgb_r8_rh     
  retq               #  7     0x1a  1      OPC=retq            
                                                               
.size target, .-target
