  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movsbl %cl, %r14d   #  1     0     4      OPC=movsbl_r32_r8   
  xchgw %r14w, %r14w  #  2     0x4   4      OPC=xchgw_r16_r16   
  movzbq %bl, %r10    #  3     0x8   4      OPC=movzbq_r64_r8   
  movswq %r10w, %rdx  #  4     0xc   4      OPC=movswq_r64_r16  
  movswq %dx, %rcx    #  5     0x10  4      OPC=movswq_r64_r16  
  movq $0x2, %rsi     #  6     0x14  10     OPC=movq_r64_imm64  
  addw %si, %dx       #  7     0x1e  3      OPC=addw_r16_r16    
  adcb %r14b, %bl     #  8     0x21  3      OPC=adcb_r8_r8      
  retq                #  9     0x24  1      OPC=retq            
                                                                
.size target, .-target
