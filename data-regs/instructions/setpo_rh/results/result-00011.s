  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x0, %rax   #  1     0     10     OPC=movq_r64_imm64  
  cwtl              #  2     0xa   1      OPC=cwtl            
  xchgb %ah, %al    #  3     0xb   2      OPC=xchgb_r8_rh     
  setnp %ah         #  4     0xd   3      OPC=setnp_rh        
  movw %ax, %r15w   #  5     0x10  4      OPC=movw_r16_r16    
  xchgw %ax, %r15w  #  6     0x14  4      OPC=xchgw_r16_r16   
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
