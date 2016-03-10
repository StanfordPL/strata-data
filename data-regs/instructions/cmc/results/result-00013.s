  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  decl %ecx                #  2     0x5  2      OPC=decl_r32      
  shll $0x1, %ecx          #  3     0x7  2      OPC=shll_r32_one  
  retq                     #  4     0x9  1      OPC=retq          
                                                                  
.size target, .-target
