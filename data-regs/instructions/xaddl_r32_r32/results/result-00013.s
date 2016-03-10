  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %dx    #  2     0xa   3      OPC=rolw_r16_one    
  adcl %ebx, %ecx   #  3     0xd   2      OPC=adcl_r32_r32    
  xchgl %ebx, %ecx  #  4     0xf   2      OPC=xchgl_r32_r32   
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
