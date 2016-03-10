  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP  Bytes  Opcode              
.target:                         #        0    0      OPC=<label>         
  movq $0xfffffffffffffffa, %r9  #  1     0    10     OPC=movq_r64_imm64  
  andl %r9d, %r9d                #  2     0xa  3      OPC=andl_r32_r32    
  sbbb %bh, %ah                  #  3     0xd  2      OPC=sbbb_rh_rh      
  retq                           #  4     0xf  1      OPC=retq            
                                                                          
.size target, .-target
