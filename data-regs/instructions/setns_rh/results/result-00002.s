  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x40, %rax  #  1     0    10     OPC=movq_r64_imm64  
  setns %cl         #  2     0xa  3      OPC=setns_r8        
  xorb %cl, %ah     #  3     0xd  2      OPC=xorb_rh_r8      
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target
