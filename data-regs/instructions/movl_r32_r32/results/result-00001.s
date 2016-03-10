  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  stc                             #  2     0xa  1      OPC=stc             
  adcl %ecx, %ebx                 #  3     0xb  2      OPC=adcl_r32_r32    
  retq                            #  4     0xd  1      OPC=retq            
                                                                           
.size target, .-target
